
(defrule inform0
(declare (salience 5000))
(id-root ?id inform)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id informed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id suvijFa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  inform.clp  	inform0   "  ?id "  suvijFa )" crlf))
)

;"informed","Adj","1.suvijFa"
;One should be well informed of the current affairs.
;
;
(defrule inform1
(declare (salience 4900))
(id-root ?id inform)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saccAI_bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " inform.clp	inform1  "  ?id "  " ?id1 "  saccAI_bawA  )" crlf))
)

;The terrorists warned that anyone who informed on them would be killed
;ugravAxiyoM ne cewAvanI xI ki jo BI unakI saccAI bawAegA vo mAra xiyA jAegA
(defrule inform2
(declare (salience 4800))
(id-root ?id inform)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUcanA_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inform.clp 	inform2   "  ?id "  sUcanA_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  inform.clp    inform2   "  ?id " ko )" crlf)
)
)

;"inform","VTI","1.sUcanA_xenA/sUciwa_karanA"
;I informed him of his rights
;The principles that inform modern teaching
;She had informed on her own parents for years
;
;
