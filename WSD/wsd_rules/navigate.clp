
(defrule navigate0
(declare (salience 5000))
(id-root ?id navigate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahI_mArga_pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  navigate.clp 	navigate0   "  ?id "  sahI_mArga_pakadZa )" crlf))
)

;"navigate","V","1.sahI_mArga_pakadZanA{upakaraNoM_se}"
(defrule navigate1
(declare (salience 4900))
(id-root ?id navigate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahI_rAswA_pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  navigate.clp 	navigate1   "  ?id "  sahI_rAswA_pakadZa )" crlf))
)

;"navigate","VTI","1.sahI_rAswA_pakadZanA{upakaraNoM_kI_sahAyawA_se}"
;It is difficult to navigate in this river.
;
