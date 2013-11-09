
(defrule pre0
(declare (salience 5000))
(id-root ?id pre)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 empt)
(kriyA-empt_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrva_krayAXikAra_se_prApwa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pre.clp pre0 " ?id "  pUrva_krayAXikAra_se_prApwa_kara )" crlf)) 
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

