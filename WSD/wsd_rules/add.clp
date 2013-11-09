
(defrule add0
(declare (salience 5000))
(id-root ?id add)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-back_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_jodZa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " add.clp add0 " ?id "  Pira_jodZa )" crlf)) 
)

(defrule add1
(declare (salience 4900))
(id-root ?id add)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Pira_jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " add.clp	add1  "  ?id "  " ?id1 "  Pira_jodZa  )" crlf))
)

(defrule add2
(declare (salience 4800))
(id-root ?id add)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yoga_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " add.clp add2 " ?id "  yoga_ho )" crlf)) 
)

(defrule add3
(declare (salience 4750))
(id-root ?id add)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yoga_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " add.clp	add3  "  ?id "  " ?id1 "  yoga_ho  )" crlf))
)

(defrule add4
(declare (salience 4700))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id add)
(kriyA-object ?id ?id1)
(not (id-cat_coarse ?id1 number));added by Shirisha Manju (13-06-13) Suggested by Sukhada
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id milAo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  add.clp    add4   "  ?id "  milAo )" crlf))
)
;Add one spoonful of sugar.


(defrule add5
(declare (salience 4600))
(id-root ?id add)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  add.clp 	add5   "  ?id "  Age_kaha )" crlf))
)

;Added by Aditya and Hardik,
;"milAo"
;Add one spoonful of sugar.
;Add a cup of water.
;kriyA-object relation between "cup" and "Add". Same relation in following.
;I want to add a cup to my collection.

