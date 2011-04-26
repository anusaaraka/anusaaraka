
;Added by Meena(23.4.11)
;The silver was tarnished by the long exposure to the air. 
(defrule long_exposure_to
(declare (salience 4000))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id exposure)
(id-root =(- ?id 1) long)
(id-root =(+ ?id 1) to)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) =(+ ?id 1) meM_bahuwa_samaya_pade_rahanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  exposure.clp  long_exposure_to  "  ?id "  "(- ?id 1) " "(+ ?id 1) "  meM_bahuwa_samaya_pade_rahanA  )" crlf))
)
