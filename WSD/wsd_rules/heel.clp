
(defrule heel0
(declare (salience 5000))
(id-root ?id heel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id edZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heel.clp 	heel0   "  ?id "  edZI )" crlf))
)

;"heel","N","1.edZI"
;garBavawI mahilAoM ko UzcI'heel' kI cappala nahIM pahananA cAhiye.
;
(defrule heel1
(declare (salience 4900))
(id-root ?id heel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_ora_Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heel.clp 	heel1   "  ?id "  eka_ora_Juka )" crlf))
)

;"heel","V","1.eka_ora_JukanA"
;nAva meM vajana asaMwuliwa hone se vaha'heel'ho jAwI hE 
;
