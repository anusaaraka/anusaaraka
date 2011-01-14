
(defrule flounder0
(declare (salience 5000))
(id-root ?id flounder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_waraha_kI_CotI_samuxrI_maCalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flounder.clp 	flounder0   "  ?id "  eka_waraha_kI_CotI_samuxrI_maCalI )" crlf))
)

;"flounder","N","1.eka_waraha_kI_CotI_samuxrI_maCalI"
;Flounder is a type of edible fish.
;
(defrule flounder1
(declare (salience 4900))
(id-root ?id flounder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flounder.clp 	flounder1   "  ?id "  ataka )" crlf))
)

;"flounder","V","1.atakanA"
;His jeep got floundered in the mud.
;--"2.GabadZA_jAnA"
;He flounders whenever asked to do any difficult work.
;
