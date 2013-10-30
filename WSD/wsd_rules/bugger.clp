
(defrule bugger0
(declare (salience 5000))
(id-root ?id bugger)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-about_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 iXara_uXara_ke_kAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bugger.clp	bugger0  "  ?id "  " ?id1 "  iXara_uXara_ke_kAma  )" crlf))
)

(defrule bugger1
(declare (salience 4900))
(id-root ?id bugger)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 iXara_uXara_ke_kAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bugger.clp	bugger1  "  ?id "  " ?id1 "  iXara_uXara_ke_kAma  )" crlf))
)

(defrule bugger2
(declare (salience 4800))
(id-root ?id bugger)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-around_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaya_gavAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bugger.clp	bugger2  "  ?id "  " ?id1 "  samaya_gavAz  )" crlf))
)

(defrule bugger3
(declare (salience 4700))
(id-root ?id bugger)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaya_gavAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bugger.clp	bugger3  "  ?id "  " ?id1 "  samaya_gavAz  )" crlf))
)

