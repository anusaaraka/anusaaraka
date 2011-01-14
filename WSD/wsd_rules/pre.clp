
(defrule pre0
(declare (salience 5000))
(id-root ?id pre)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 empt)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrva_krayAXikAra_se_prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pre.clp	pre0  "  ?id "  " ?id1 "  pUrva_krayAXikAra_se_prApwa_kara  )" crlf))
)

(defrule pre1
(declare (salience 4900))
(id-root ?id pre)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 empt)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrva_krayAXikAra_se_prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pre.clp	pre1  "  ?id "  " ?id1 "  pUrva_krayAXikAra_se_prApwa_kara  )" crlf))
)

