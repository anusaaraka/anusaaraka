;"whipping","N","1.kodoM_kI_mAra"
;The slave got a whipping.
;
;
(defrule whip0
(declare (salience 5000))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CIna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whip.clp	whip0  "  ?id "  " ?id1 "  CIna_le  )" crlf))
)

(defrule whip1
(declare (salience 4900))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CIna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whip.clp	whip1  "  ?id "  " ?id1 "  CIna_le  )" crlf))
)

(defrule whip2
(declare (salience 4800))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id whipping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kodoM_kI_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  whip.clp  	whip2   "  ?id "  kodoM_kI_mAra )" crlf))
)

(defrule whip3
(declare (salience 4700))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAbuka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whip.clp 	whip3   "  ?id "  cAbuka )" crlf))
)

(defrule whip4
(declare (salience 4600))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAbuka_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whip.clp 	whip4   "  ?id "  cAbuka_mAra )" crlf))
)

;"whip","VTI","1.cAbuka_mAranA"
;The teacher whipped the boy.
;--"2.PeMtanA"
;She whipped the cream.
;--"3.xiSA_kI_ora_calanA"
;Chill winds whipped the desert.
;--"4.Jatake_se_nikAlanA"
;The man whipped out a knife.
;
;
