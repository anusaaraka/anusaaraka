
(defrule swirl0
(declare (salience 5000))
(id-root ?id swirl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swirl.clp 	swirl0   "  ?id "  cakkara )" crlf))
)

;"swirl","N","1.cakkara"
;Dancers spinning round in a swirl of bright colours.
;
(defrule swirl1
(declare (salience 4900))
(id-root ?id swirl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakkara_KAwe_hue_udZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swirl.clp 	swirl1   "  ?id "  cakkara_KAwe_hue_udZa )" crlf))
)

;"swirl","V","1.cakkara_KAwe_hue_udZanA"
;The dust is swirling in the streets.
;
