
(defrule show0
(declare (salience 5000))
(id-root ?id show)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKAvA_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " show.clp show0 " ?id "  xiKAvA_kara )" crlf)) 
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
;@@@ Added by jagriti(30.11.2013)
;If you'd like to come this way, I'll show you out. [veena mam]
;अगर आप इस तरफ आना पसंद करेंगे ,तो मैं आपको दरबाजे तक छोड़ दूंगा .  
(defrule show2
(declare (salience 4800))
(id-root ?id show)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " show.clp	show2 "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)
(defrule show3
(declare (salience 4700))
(id-root ?id show)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  show.clp 	show3   "  ?id "  xiKA )" crlf))
)

;$$$ Modified by Shirisha Manju ; added flower|fashion in the list
(defrule show4
(declare (salience 4600))
(id-root ?id show)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id)
(id-word ?id1 dog|flower|fashion)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  show.clp 	show4   "  ?id "  praxarSanI )" crlf))
)

(defrule show7
(declare (salience 4400))
(id-root ?id show)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  show.clp 	show7   "  ?id "  xiKA )" crlf))
(assert (kriyA_id-object2_viBakwi ?id ko))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object2_viBakwi   " ?*wsd_dir* "  show.clp      show7   "  ?id " ko )" crlf)
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

;----------------- Removed rules ---------------------
;show5	
;	if (samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id) and (id-word ?id1 flower) then praxarSanI
;	Note : Merged in show4
;show6 
;	if (samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id) and (id-word ?id1 fashion) then praxarSanI
;	Note : Merged in show4
