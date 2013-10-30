
(defrule show0
(declare (salience 5000))
(id-root ?id show)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xiKAvA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " show.clp	show0  "  ?id "  " ?id1 "  xiKAvA_kara  )" crlf))
)

(defrule show1
(declare (salience 4900))
(id-root ?id show)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xiKAvA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " show.clp	show1  "  ?id "  " ?id1 "  xiKAvA_kara  )" crlf))
)

(defrule show2
(declare (salience 4800))
(id-root ?id show)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  show.clp 	show2   "  ?id "  xiKA )" crlf))
)

(defrule show3
(declare (salience 4700))
(id-root ?id show)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 dog)
(samAsa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  show.clp 	show3   "  ?id "  praxarSanI )" crlf))
)

(defrule show4
(declare (salience 4600))
(id-root ?id show)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 flower)
(samAsa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  show.clp 	show4   "  ?id "  praxarSanI )" crlf))
)

(defrule show5
(declare (salience 4500))
(id-root ?id show)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 fashion)
(samAsa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  show.clp 	show5   "  ?id "  praxarSanI )" crlf))
)

(defrule show6
(declare (salience 4400))
(id-root ?id show)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  show.clp 	show6   "  ?id "  xiKA )" crlf))
(assert (kriyA_id-object2_viBakwi ?id ko))
)

;"show","V","1.xiKAnA"
;I will show him how to do it.
;They showed me their wedding photos.
;--"2.bawalAnA"
;I showed him the way out.
;--"3.sixXa karanA/pramANiwa karanA"
;They think I can't win but I'll show them.
;--"4.xiKAI xenA"
;I waited for him whole day but he never showed.
;
;
