
(defrule gain0
(declare (salience 5000))
(id-root ?id gain)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " gain.clp	gain0  "  ?id "  " ?id1 "  pICA_kara  )" crlf))
)

;You will have to speed up-they are gaining on us!
;wumheM apanI raPwAra baDZAnI hogI kyoMki ve hamArA pICA kara rahe hEM
(defrule gain1
(declare (salience 4900))
(id-root ?id gain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gain.clp 	gain1   "  ?id "  prApwi )" crlf))
)

;"gain","N","1.prApwi"
;No one works without any gain.
;--"2.lABa"
;His business is bringing him a lot of gains.
;
(defrule gain2
(declare (salience 4800))
(id-root ?id gain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gain.clp 	gain2   "  ?id "  prApwa_ho )" crlf))
)

;"gain","V","1.prApwa_honA"
;I gained a lot of information in the two-day workshop.
;--"2.jarUrawa_se_aXika_milanA"
;His business gained him profit.
;--"3.pahuMcanA"
;After six hours of cycling,he finally gained the finishing line.
;--"4.GadZI_Axi_kA_wejI_se_calanA"
;My wrist watch gains by five minutes.
;
