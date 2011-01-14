
(defrule checked0
(declare (salience 5000))
(id-root ?id checked)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bila_Barakara_jagaha_KAlI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " checked.clp	checked0  "  ?id "  " ?id1 "  bila_Barakara_jagaha_KAlI_kara  )" crlf))
)

(defrule checked1
(declare (salience 4900))
(id-root ?id checked)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bila_Barakara_jagaha_KAlI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " checked.clp	checked1  "  ?id "  " ?id1 "  bila_Barakara_jagaha_KAlI_kara  )" crlf))
)

(defrule checked2
(declare (salience 4800))
(id-root ?id checked)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAzcA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  checked.clp 	checked2   "  ?id "  jAzcA_huA )" crlf))
)

(defrule checked3
(declare (salience 4700))
(id-root ?id checked)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bila_Barakara_jagaha_KAlI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " checked.clp	checked3  "  ?id "  " ?id1 "  bila_Barakara_jagaha_KAlI_kara  )" crlf))
)

(defrule checked4
(declare (salience 4600))
(id-root ?id checked)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bila_Barakara_jagaha_KAlI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " checked.clp	checked4  "  ?id "  " ?id1 "  bila_Barakara_jagaha_KAlI_kara  )" crlf))
)

(defrule checked5
(declare (salience 4500))
(id-root ?id checked)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bila_Barakara_jagaha_KAlI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  checked.clp 	checked5   "  ?id "  bila_Barakara_jagaha_KAlI_kara )" crlf))
)

(defrule checked6
(declare (salience 4400))
(id-root ?id checked)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAraKAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  checked.clp 	checked6   "  ?id "  cAraKAne_vAlA )" crlf))
)

;"checked","Adj","1.cAraKAne_vAlA"
;He was wearing a checked shirt.
;
;
