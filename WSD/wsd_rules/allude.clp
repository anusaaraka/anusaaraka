
(defrule allude0
(declare (salience 5000))
(id-root ?id allude)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 iSArA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " allude.clp	allude0  "  ?id "  " ?id1 "  iSArA_kara  )" crlf))
)

;He alluded to the problem but did not mention it.
;usane samasyA kI waraPa iSArA kiyA para bawAyA nahIM
(defrule allude1
(declare (salience 4900))
(id-root ?id allude)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  allude.clp 	allude1   "  ?id "  saMkewa_kara )" crlf))
)

;"allude","VT","1.saMkewa_karanA"
;He alluded to the problem but did not mention it.
;
;