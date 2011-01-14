
(defrule rifle0
(declare (salience 5000))
(id-root ?id rifle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAIPala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rifle.clp 	rifle0   "  ?id "  rAIPala )" crlf))
)

;"rifle","N","1.eka_prakAra_kI_banxUka"
;Don't play with that rifle, it is loaded.
;
(defrule rifle1
(declare (salience 4900))
(id-root ?id rifle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CIna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rifle.clp 	rifle1   "  ?id "  CIna_le )" crlf))
)

;"rifle","VT","1.CIna_lenA"
;Someone has rifled through her bag.
;
