
(defrule drift0
(declare (salience 5000))
(id-root ?id drift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAva_saMvahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drift.clp 	drift0   "  ?id "  bahAva_saMvahana )" crlf))
)

;"drift","N","1.bahAva_saMvahana"
;The drift of people from the villages into the cities is not a healthy
; trend.
;--"2.apavahana{deviation}"
;Our young generation is drifting away from traditional values. 
;--"3.aBiprAya_yA_arWa"
;Her French is not very good,but she got the drift of what I said. 
;--"4.apoDZa{deposit}"
;Deep && high'snow drifts'are posing threats to the ship.  
;
(defrule drift1
(declare (salience 4900))
(id-root ?id drift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baha_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drift.clp 	drift1   "  ?id "  baha_jA )" crlf))
)

;"drift","V","1.baha_jAnA"
;Their boat drifted out to river.
;--"2.GUmanA-PiranA"
;The people drifted away from the Exhibition Ground. 
;--"3.pravAhiwa_karanA"
;The arguments drifted back to current situations in politics.
;--"4.apoDZa_bAlU_rewI"
;Our old bombay highway road is closed because of drifting. 
;
