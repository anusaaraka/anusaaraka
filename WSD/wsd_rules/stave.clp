
(defrule stave0
(declare (salience 5000))
(id-root ?id stave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_burI_cIjZa_ko_svayaM_se_xUra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stave.clp	stave0  "  ?id "  " ?id1 "  kisI_burI_cIjZa_ko_svayaM_se_xUra_raKa  )" crlf))
)

(defrule stave1
(declare (salience 4900))
(id-root ?id stave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_burI_cIjZa_ko_svayaM_se_xUra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stave.clp	stave1  "  ?id "  " ?id1 "  kisI_burI_cIjZa_ko_svayaM_se_xUra_raKa  )" crlf))
)

(defrule stave2
(declare (salience 4800))
(id-root ?id stave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stave.clp 	stave2   "  ?id "  Cexa_kara_xe )" crlf))
)

(defrule stave3
(declare (salience 4700))
(id-root ?id stave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_motI_CadZI_yA_dZaMdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stave.clp 	stave3   "  ?id "  koI_motI_CadZI_yA_dZaMdZA )" crlf))
)

;"stave","N","1.koI motI CadZI yA dZaMdZA"
;Police use staves during riots.
;
;