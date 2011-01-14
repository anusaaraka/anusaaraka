
(defrule stall0
(declare (salience 5000))
(id-root ?id stall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xukAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stall.clp 	stall0   "  ?id "  xukAna )" crlf))
)

;"stall","N","1.xukAna"
;Ramu runs a vegetable stall.
;--"2.aSvaSAlA_ke_alaga_alaga_kamareM"
;His stable has different stalls for different hosrses.
;--"3.maMca_ke_samIpa_vAlI_kursiyAz"
;Stalls in a theatre are usually reserved for VIP's
;--"4.carcA_meM_bETane_kA_niSciwa_sWAna"
;There are specific stalls for christians in the church.
;
(defrule stall1
(declare (salience 4900))
(id-root ?id stall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMjana_kA_banxa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stall.clp 	stall1   "  ?id "  iMjana_kA_banxa_ho_jA )" crlf))
)

;"stall","V","1.iMjana_kA_banxa_ho_jAnA"
;Our car stalled at the main crossing.
;--"2.kArya_ko_bAXiwa_karanA"
;Less rainfall stalls the developing of crops.
;--"3.pragawi_ko_rokanA"
;Financial crises stalls the development of the countyry.
;
