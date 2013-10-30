
(defrule cordon0
(declare (salience 5000))
(id-root ?id cordon)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GerA_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cordon.clp	cordon0  "  ?id "  " ?id1 "  GerA_dAla  )" crlf))
)

;Police had cordoned off the whole college.
;pulisa ne pUre kAleja ko Gera liyA WA
(defrule cordon1
(declare (salience 4900))
(id-root ?id cordon)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cordon.clp	cordon1  "  ?id "  " ?id1 "  GerA  )" crlf))
)

(defrule cordon2
(declare (salience 4800))
(id-root ?id cordon)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cordon.clp	cordon2  "  ?id "  " ?id1 "  GerA  )" crlf))
)

(defrule cordon3
(declare (salience 4700))
(id-root ?id cordon)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cordon.clp	cordon3  "  ?id "  " ?id1 "  GerA  )" crlf))
)

(defrule cordon4
(declare (salience 4600))
(id-root ?id cordon)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cordon.clp	cordon4  "  ?id "  " ?id1 "  GerA  )" crlf))
)

(defrule cordon5
(declare (salience 4500))
(id-root ?id cordon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cordon.clp 	cordon5   "  ?id "  GerA )" crlf))
)

(defrule cordon6
(declare (salience 4400))
(id-root ?id cordon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cordon.clp 	cordon6   "  ?id "  GerA )" crlf))
)

;"cordon","N","1.GerA"
;The crowds broke through the police cordon.
;--"2.vaha_pedZa_jisa_kI_dAlI_CAzta_xI_gaI_hO_wAkI_vaha_sIXA_badZe"
;In our garden, there are few cordons.
;
;