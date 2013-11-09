
(defrule motion0
(declare (salience 5000))
(id-root ?id motion)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-to_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iSArA_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " motion.clp motion0 " ?id "  iSArA_kara )" crlf)) 
)

(defrule motion1
(declare (salience 4900))
(id-root ?id motion)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-to_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iSArA_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " motion.clp motion1 " ?id "  iSArA_kara )" crlf)) 
)

(defrule motion2
(declare (salience 4800))
(id-root ?id motion)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-to_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iSArA_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " motion.clp motion2 " ?id "  iSArA_kara )" crlf)) 
)

(defrule motion3
(declare (salience 4700))
(id-root ?id motion)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 iSArA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " motion.clp	motion3  "  ?id "  " ?id1 "  iSArA_kara  )" crlf))
)

(defrule motion4
(declare (salience 4600))
(id-root ?id motion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iSArA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  motion.clp 	motion4   "  ?id "  iSArA_kara )" crlf))
)

(defrule motion5
(declare (salience 4500))
(id-root ?id motion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  motion.clp 	motion5   "  ?id "  gawi )" crlf))
)

;"motion","N","1.gawi"
;Newton's laws of motion widely accepted by the world.
;
;