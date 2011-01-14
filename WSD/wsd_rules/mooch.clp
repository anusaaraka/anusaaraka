
(defrule mooch0
(declare (salience 5000))
(id-root ?id mooch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 binA_uxxeSya_ke_iXara_uXara_GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mooch.clp	mooch0  "  ?id "  " ?id1 "  binA_uxxeSya_ke_iXara_uXara_GUma  )" crlf))
)

(defrule mooch1
(declare (salience 4900))
(id-root ?id mooch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 binA_uxxeSya_ke_iXara_uXara_GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mooch.clp	mooch1  "  ?id "  " ?id1 "  binA_uxxeSya_ke_iXara_uXara_GUma  )" crlf))
)

(defrule mooch2
(declare (salience 4800))
(id-root ?id mooch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA_uxxeSya_ke_iXara_uXara_GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mooch.clp 	mooch2   "  ?id "  binA_uxxeSya_ke_iXara_uXara_GUma )" crlf))
)

