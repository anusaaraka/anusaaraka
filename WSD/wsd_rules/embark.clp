
(defrule embark0
(declare (salience 5000))
(id-root ?id embark)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AraMBa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " embark.clp	embark0  "  ?id "  " ?id1 "  AraMBa_kara  )" crlf))
)

;She embarked on a new job.
;usane naI nOkarI kI SurUAwa kI
(defrule embark1
(declare (salience 4900))
(id-root ?id embark)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  embark.clp 	embark1   "  ?id "  caDZA )" crlf))
)

(defrule embark2
(declare (salience 4800))
(id-root ?id embark)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  embark.clp 	embark2   "  ?id "  caDZa )" crlf))
)

;"embark","VTI","1.caDZanA[caDZAnA]"
;They embarked the ship at Bombay.
;--"2.kisI_kAma_meM_laganA"
;He embarked don his new mission in May.
;
