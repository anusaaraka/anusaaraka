
(defrule syringe0
(declare (salience 5000))
(id-root ?id syringe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id picakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  syringe.clp 	syringe0   "  ?id "  picakArI )" crlf))
)

;"syringe","N","1.picakArI"
;Syringes are used for injecting medicines in the body of a sick person.
;
(defrule syringe1
(declare (salience 4900))
(id-root ?id syringe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id picakArI_se_sAPZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  syringe.clp 	syringe1   "  ?id "  picakArI_se_sAPZa_kara )" crlf))
)

;"syringe","V","1.picakArI_se_sAPZa_karanA"
;The doctor syringes the wound of the patient.
;
