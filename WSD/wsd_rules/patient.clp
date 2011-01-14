
(defrule patient0
(declare (salience 5000))
(id-root ?id patient)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XEryavAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patient.clp 	patient0   "  ?id "  XEryavAna )" crlf))
)

;"patient","Adj","1.XEryavAna"
;She is a patient listener.
;
(defrule patient1
(declare (salience 4900))
(id-root ?id patient)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id marIjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patient.clp 	patient1   "  ?id "  marIjZa )" crlf))
)

;"patient","N","1.marIjZa"
;This patient is suffering from malaria.
;
