

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



