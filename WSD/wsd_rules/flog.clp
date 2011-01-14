
(defrule flog0
(declare (salience 5000))
(id-root ?id flog)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flogging )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mAranA_pItanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flog.clp  	flog0   "  ?id "  mAranA_pItanA )" crlf))
)

;"flogging","N","1.mAranA pItanA"
;The teacher believes in flogging the students to keep them in control.
;
;
(defrule flog1
(declare (salience 4900))
(id-root ?id flog)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahuwa_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flog.clp	flog1  "  ?id "  " ?id1 "  bahuwa_mehanawa_kara  )" crlf))
)

;He flogged away for his exams.  
;usane apanI parIkRA ke lie bahuwa mehanawa kI
(defrule flog2
(declare (salience 4800))
(id-root ?id flog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kodZe_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flog.clp 	flog2   "  ?id "  kodZe_mAra )" crlf))
)

;"flog","V","1.kodZe_mAranA"
;The teacher flogged the students with birch stick.
;--"2.becanA"
;Let us flog our house at the price quoted by the dealer.
;
;
