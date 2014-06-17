
(defrule wipe0
(declare (salience 4900))
(id-root ?id wipe)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mitA_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " wipe.clp wipe0 " ?id "  mitA_xe )" crlf)) 
)

;$$$ Modified by Pramila(BU) on 24-03-2014 [condition for human is added]
;If you use that strategy, he will wipe you out.   [verified]
;yaxi Apa usa raNanIwi kA upayoga karawe hEM, wo vaha Apako mitA xegA.   -- old
(defrule wipe1
(declare (salience 4900))
(id-root ?id wipe)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mitA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wipe.clp	wipe1  "  ?id "  " ?id1 "  mitA_xe  )" crlf))
)

(defrule wipe2
(declare (salience 4800))
(id-root ?id wipe)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pozCa_dAla));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " wipe.clp wipe2 " ?id "  pozCa_dAla )" crlf)) 
)

(defrule wipe3
(declare (salience 4700))
(id-root ?id wipe)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pozCa_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wipe.clp	wipe3  "  ?id "  " ?id1 "  pozCa_dAla  )" crlf))
)

(defrule wipe4
(declare (salience 4600))
(id-root ?id wipe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pOMCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wipe.clp 	wipe4   "  ?id "  pOMCA )" crlf))
)

;"wipe","N","1.pOMCA"
;Give the floor a good wipe.
;
(defrule wipe5
(declare (salience 4500))
(id-root ?id wipe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id poMCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wipe.clp 	wipe5   "  ?id "  poMCa )" crlf))
)

;"wipe","V","1.poMCa"
(defrule wipe6
(declare (salience 4400))
(id-root ?id wipe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pOMCA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wipe.clp 	wipe6   "  ?id "  pOMCA_lagA )" crlf))
)

;"wipe","VT","1.pOMCA_lagAnA"
;Wipe the floor.
;

;@@@ Added by Pramila(BU) on 18-03-2014
;I have wiped off my debt.   ;shiksharthi
;मैंने अपना ऋण चुका दिया है.
(defrule wipe7
(declare (salience 4700))
(id-root ?id wipe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 debt)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cukA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wipe.clp	wipe7  "  ?id "  " ?id1 "  cukA  )" crlf))
)


;@@@ Added by Pramila(BU) on 18-03-2014
;She wiped off her make-up.  ;oald
;उसने अपना मेक-अप हटा दिया है.
(defrule wipe8
(declare (salience 4500))
(id-root ?id wipe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hatA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wipe.clp	wipe8  "  ?id "  " ?id1 "  hatA_xe  )" crlf))
)

;@@@ Added by Pramila(BU) on 18-03-2014
;All that travelling has wiped her out.   ;oald
;उस सारी यात्रा ने उसे थका दिया है.
(defrule wipe9
(declare (salience 4800))
(id-root ?id wipe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 WakA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wipe.clp	wipe9  "  ?id "  " ?id1 "  WakA_xe  )" crlf))
)

;@@@ Added by Pramila(BU) on 18-03-2014
;She took a cloth and wiped down the kitchen table.   ;oald
;उसने एक कपड़ा लिया और रसोई-मेज साफ की.
(defrule wipe10
(declare (salience 4800))
(id-root ?id wipe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAPa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wipe.clp	wipe10  "  ?id "  " ?id1 "  sAPa_kara  )" crlf))
)
