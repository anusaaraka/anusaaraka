
(defrule point0
(declare (salience 5000))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pointing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id tIpatApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  point.clp  	point0   "  ?id "  tIpatApa )" crlf))
)

;"pointing","N","1.tIpatApa/tipakArI"
;The pointing used in the castle is of good quality
;
;
(defrule point1
(declare (salience 4900))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp	point1  "  ?id "  " ?id1 "  xiKA  )" crlf))
)

;He pointed out his car to the watchman.
;usane apanI kAra cOkIxAra ko xiKAI
(defrule point2
(declare (salience 4800))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XyAna_AkarRiwa_kara))
(assert (kriyA_id-object_viBakwi ?id kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp	point2  "  ?id "  " ?id1 "  XyAna_AkarRiwa_kara  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  point.clp     point2   "  ?id "  kI_ora )" crlf)
)

;Added by Sheetal(02-08-10)
;(defrule point3
;(declare (salience 4950))
;(id-root ?id point)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 out)
;(kriyA-upasarga ?id ?id1)
;(kriyA-object  ?id ?obj)
;(id-word ?obj that)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XyAna xilA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp	point3  "  ?id "  " ?id1 "  XyAna xilA  )" crlf))
;)

;particle_out_- && category=verb	nirxeSa_kara	100
;PP_null_out && category=verb	nirxeSa_kara	100
;Added by Human
(defrule point4
(declare (salience 4600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 pointed)
(id-word ?id1 teeth)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nukIle))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point4   "  ?id "  nukIle )" crlf))
)

(defrule point5
(declare (salience 4500))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 pointed)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nukIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point5   "  ?id "  nukIlA )" crlf))
)

;"pointed","Adj","1.nukIlA"
;This pencil has pointed edges on both sides
;--"2.suspaRta"
;He gave a pointed talk on the issue.
;
;
(defrule point6
(declare (salience 4400))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iSArA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point6   "  ?id "  iSArA_kara )" crlf))
)

;default_sense && category=verb	iSArA kara	0
;"point","V","1.iSArA karanA"
;He pointed towards the broken window
;--"2.niSAnA bAzXanA/lakRya karanA"
;He pointed the gun at the lion
;--"3.kI ora honA"
;A rose plant's spines point upward
;--"4.mahawwva xenA"
;This story points the duties && rights of the person
;--"5.tIpa karanA"
;He points the broken wall
;
;
