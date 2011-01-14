
;default_sense && category=noun	xeSa	0
(defrule soil0
(declare (salience 5000))
(id-root ?id soil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mittI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soil.clp 	soil0   "  ?id "  mittI )" crlf))
)

;"soil","N","1.xeSa"
;One should love his soil.
;--"2.mittI"
;Plants are grown on upper layer of soil.
;
(defrule soil1
(declare (salience 4900))
(id-root ?id soil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mElA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soil.clp 	soil1   "  ?id "  mElA_kara )" crlf))
)

;"soil","V","1.mElA_karanA"
;While playing children usually soil their clothes.
;
