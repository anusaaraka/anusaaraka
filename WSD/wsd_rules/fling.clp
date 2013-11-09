
(defrule fling0
(declare (salience 5000))
(id-root ?id fling)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIGrawA_se_kapadZe_uwAra));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " fling.clp fling0 " ?id "  SIGrawA_se_kapadZe_uwAra )" crlf)) 
)

(defrule fling1
(declare (salience 4900))
(id-root ?id fling)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SIGrawA_se_kapadZe_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fling.clp	fling1  "  ?id "  " ?id1 "  SIGrawA_se_kapadZe_uwAra  )" crlf))
)

(defrule fling2
(declare (salience 4800))
(id-root ?id fling)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-on_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIGrawA_se_kapadZe_pahana));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " fling.clp fling2 " ?id "  SIGrawA_se_kapadZe_pahana )" crlf)) 
)

(defrule fling3
(declare (salience 4700))
(id-root ?id fling)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SIGrawA_se_kapadZe_pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fling.clp	fling3  "  ?id "  " ?id1 "  SIGrawA_se_kapadZe_pahana  )" crlf))
)

(defrule fling4
(declare (salience 4600))
(id-root ?id fling)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIGrawA_se_kapadZe_uwAra));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " fling.clp fling4 " ?id "  SIGrawA_se_kapadZe_uwAra )" crlf)) 
)

(defrule fling5
(declare (salience 4500))
(id-root ?id fling)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SIGrawA_se_kapadZe_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fling.clp	fling5  "  ?id "  " ?id1 "  SIGrawA_se_kapadZe_uwAra  )" crlf))
)

(defrule fling6
(declare (salience 4400))
(id-root ?id fling)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fling.clp 	fling6   "  ?id "  PeMka )" crlf))
)

(defrule fling7
(declare (salience 4300))
(id-root ?id fling)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ananxiwa_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fling.clp 	fling7   "  ?id "  Ananxiwa_honA )" crlf))
)

;"fling","N","1.Ananxiwa honA"
;He had his fling before going abroad.
;--"2.prema prasaMga"
;He had a brief fling with Sheela.
;
;