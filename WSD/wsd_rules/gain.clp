
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

;$$$ Modified 'prApwa_ho' to 'prApwa_kara' by Roja(07-05-14). Suggested by Chaitanya Sir.
;I gained a lot of information in the two-day workshop.
;mEMne xo xina kI kAryaSAlA meM bahuwa sUcanA prApwa kI. (Translation Suggested by Sukhada)
(defrule gain2
(declare (salience 4800))
(id-root ?id gain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gain.clp 	gain2   "  ?id "  prApwa_kara )" crlf))
)

;@@@ Added by Roja (17-05-14). Suggested by Chaitanya Sir.
;"gain","V","1.prApwa_honA"
;There is nothing to be gained from delaying the decision. [OALD]
;nirNaya ko vilambiwa karane se kuCa prApwa nahIM honA_hE/hogA
;nirNaya meM vilamba karane se kuCa prApwa nahIM honA_hE/hogA
(defrule gain3
(declare (salience 4800))
(id-root ?id gain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not (kriyA-object ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gain.clp     gain3   "  ?id "  prApwa_ho )" crlf))
)

;--"2.jarUrawa_se_aXika_milanA"
;His business gained him profit.
;--"3.pahuMcanA"
;After six hours of cycling,he finally gained the finishing line.
;--"4.GadZI_Axi_kA_wejI_se_calanA"
;My wrist watch gains by five minutes.
;
