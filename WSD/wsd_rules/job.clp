

;Added by Meena(23.3.10)
;If you were a middle-class American without a job , who would you vote for . 
(defrule without_a_job
(declare (salience 4200))
(id-root ?id job)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 without)
(kriyA-without_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 berojZagAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " job.clp  without_a_job  "  ?id "  " ?id1 "   berojZagAra  )" crlf))
)

;@@@ Added by Prachi Rathore
(defrule job0
(declare (salience 4200))
(id-root ?id job)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-for_saMbanXI ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOkarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " job.clp 	job0   "  ?id "  nOkarI )" crlf))
)

;@@@ Added by Prachi Rathore
(defrule job1
(declare (salience 4000))
(id-root ?id job)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " job.clp 	job1   "  ?id " kAma )" crlf))
)



;@@@ Added by Prachi Rathore [10-1-14]
;What's the point of studying if you can't get a job afterwards?  [Cambridge]
(defrule job2
(declare (salience 4200))
(id-root ?id job)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id2 ?id)
(kriyA-samakAlika_kriyA  ?id1 ?id2)
(id-root ?id1 study)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOkarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " job.clp 	job2   "  ?id " nOkarI )" crlf))
)

