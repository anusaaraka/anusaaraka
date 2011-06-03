
(defrule trade0
(declare (salience 5000))
(id-root ?id trade)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id trading )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id lena-xena))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  trade.clp  	trade0   "  ?id "  lena-xena )" crlf))
)

;"trading","N","1.lena-xena"
;Trading is his profession.
;
;
(defrule trade1
(declare (salience 4900))
(id-root ?id trade)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 purAnI_vaswu_xekara_nayI_vaswu_KarIxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trade.clp	trade1  "  ?id "  " ?id1 "  purAnI_vaswu_xekara_nayI_vaswu_KarIxa  )" crlf))
)

(defrule trade2
(declare (salience 4800))
(id-root ?id trade)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 purAnI_vaswu_xekara_nayI_vaswu_KarIxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trade.clp	trade2  "  ?id "  " ?id1 "  purAnI_vaswu_xekara_nayI_vaswu_KarIxa  )" crlf))
)

(defrule trade3
(declare (salience 4700))
(id-root ?id trade)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anuciwa_lABa_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trade.clp	trade3  "  ?id "  " ?id1 "  anuciwa_lABa_uTA  )" crlf))
)

(defrule trade4
(declare (salience 4600))
(id-root ?id trade)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anuciwa_lABa_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trade.clp	trade4  "  ?id "  " ?id1 "  anuciwa_lABa_uTA  )" crlf))
)

(defrule trade5
(declare (salience 4500))
(id-root ?id trade)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anuciwa_lABa_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trade.clp	trade5  "  ?id "  " ?id1 "  anuciwa_lABa_uTA  )" crlf))
)

(defrule trade6
(declare (salience 4400))
(id-root ?id trade)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anuciwa_lABa_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trade.clp	trade6  "  ?id "  " ?id1 "  anuciwa_lABa_uTA  )" crlf))
)




;Added by Meena(20.5.11)
;At the end of the day, 251.2 million shares were traded.
(defrule trade7
(declare (salience 4300))
(id-root ?id trade)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?subj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyApAra_kara))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trade.clp     trade7   "  ?id "  vyApAra_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  trade.clp      trade7   "  ?id " kA )" crlf))
)




;Salience reduced by Meena(20.5.11)
(defrule trade8
(declare (salience 0))
;(declare (salience 4300))
(id-root ?id trade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyApAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trade.clp 	trade8   "  ?id "  vyApAra_kara )" crlf))
)

;default_sense && category=verb	vyApAra_kara	0
;"trade","V","1.vyApAra_karanA"
;The businessmen have to trade with other countries.
;--"2.vaswu_vinimaya_karanA"
;He traded his stamp-collection for a coin-collection.
;
;
