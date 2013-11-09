
(defrule blurt0
(declare (salience 5000))
(id-root ?id blurt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ekaxama_se_bola_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blurt.clp	blurt0  "  ?id "  " ?id1 "  ekaxama_se_bola_xe  )" crlf))
)

;He blurted out all his secrets.
;usane apane sAre rAjZa ekaxama se bola xie
(defrule blurt1
(declare (salience 4900))
(id-root ?id blurt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bola_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " blurt.clp blurt1 " ?id "  bola_xe )" crlf)) 
)

(defrule blurt2
(declare (salience 4800))
(id-root ?id blurt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bola_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blurt.clp	blurt2  "  ?id "  " ?id1 "  bola_xe  )" crlf))
)

(defrule blurt3
(declare (salience 4700))
(id-root ?id blurt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA_soce-samaJe_bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blurt.clp 	blurt3   "  ?id "  binA_soce-samaJe_bola )" crlf))
)

;"blurt","V","1.binA_soce-samaJe_bolanA"
;Abhishek blurted out the very confidential information without knowing it`s 
;importance.
; 
;"blush","V","1.SaramAnA"
;She blushed when he flattered her.
;
;