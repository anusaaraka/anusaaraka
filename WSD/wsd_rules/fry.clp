
(defrule fry0
(declare (salience 5000))
(id-root ?id fry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maCalI_ke_bahuwa_Cote_Cote_bacce))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fry.clp 	fry0   "  ?id "  maCalI_ke_bahuwa_Cote_Cote_bacce )" crlf))
)

;"fry","N","1.maCalI_ke_bahuwa_Cote_Cote_bacce"
;She is selling fries in the market.
;
(defrule fry1
(declare (salience 4900))
(id-root ?id fry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fry.clp 	fry1   "  ?id "  wala )" crlf))
)

;"fry","VT","1.walanA"
;The cook fried the chips.
;
