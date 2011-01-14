
(defrule brush0
(declare (salience 5000))
(id-root ?id brush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 aside)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XyAna_na_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brush.clp	brush0  "  ?id "  " ?id1 "  XyAna_na_xe  )" crlf))
)

;He brushed aside my suggestions.
;usane merI salAha para XyAna nahIM xiyA
(defrule brush1
(declare (salience 4900))
(id-root ?id brush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hatA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brush.clp	brush1  "  ?id "  " ?id1 "  hatA_xe  )" crlf))
)

;She brushed the fly away.
;usane makKI ko hatA xiyA
(defrule brush2
(declare (salience 4800))
(id-root ?id brush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 aside)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 eka_ora_Xakela_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brush.clp	brush2  "  ?id "  " ?id1 "  eka_ora_Xakela_xe  )" crlf))
)

(defrule brush3
(declare (salience 4700))
(id-root ?id brush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 aside)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 eka_ora_Xakela_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brush.clp	brush3  "  ?id "  " ?id1 "  eka_ora_Xakela_xe  )" crlf))
)

(defrule brush4
(declare (salience 4600))
(id-root ?id brush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bruSa_se_hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brush.clp	brush4  "  ?id "  " ?id1 "  bruSa_se_hatA  )" crlf))
)

(defrule brush5
(declare (salience 4500))
(id-root ?id brush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bruSa_se_hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brush.clp	brush5  "  ?id "  " ?id1 "  bruSa_se_hatA  )" crlf))
)

(defrule brush6
(declare (salience 4400))
(id-root ?id brush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brush.clp	brush6  "  ?id "  " ?id1 "  nikAla_xe  )" crlf))
)

(defrule brush7
(declare (salience 4300))
(id-root ?id brush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brush.clp	brush7  "  ?id "  " ?id1 "  nikAla_xe  )" crlf))
)

(defrule brush8
(declare (salience 4200))
(id-root ?id brush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 punaH_aByAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brush.clp	brush8  "  ?id "  " ?id1 "  punaH_aByAsa_kara  )" crlf))
)

(defrule brush9
(declare (salience 4100))
(id-root ?id brush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 punaH_aByAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brush.clp	brush9  "  ?id "  " ?id1 "  punaH_aByAsa_kara  )" crlf))
)

(defrule brush10
(declare (salience 4000))
(id-root ?id brush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buruSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brush.clp 	brush10   "  ?id "  buruSa )" crlf))
)

(defrule brush11
(declare (salience 3900))
(id-root ?id brush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 punaH_aByAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brush.clp	brush11  "  ?id "  " ?id1 "  punaH_aByAsa_kara  )" crlf))
)

(defrule brush12
(declare (salience 3800))
(id-root ?id brush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 punaH_aByAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brush.clp	brush12  "  ?id "  " ?id1 "  punaH_aByAsa_kara  )" crlf))
)

(defrule brush13
(declare (salience 3700))
(id-root ?id brush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brush.clp 	brush13   "  ?id "  JAda )" crlf))
)

;default_sense && category=verb	bruSa_se_JAdanA_yA_sAPa_kara	0
;"brush","VT","1.bruSa_se_JAdanA_yA_sAPa_karanA"
;I brush my teeth everyday.
;
;
