
(defrule smash0
(declare (salience 5000))
(id-root ?id smash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id smashing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uwwama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  smash.clp  	smash0   "  ?id "  uwwama )" crlf))
)

;"smashing","Adj","1.uwwama"
;We had a smashing time on holiday.
;
(defrule smash1
(declare (salience 4900))
(id-root ?id smash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id smashed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id piye_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  smash.clp  	smash1   "  ?id "  piye_hue )" crlf))
)

;"smashed","Adj","1.piye_hue{SarAba}"
;Drinking is not bad but smashed up people create problem of law && order.
;
(defrule smash2
(declare (salience 4800))
(id-root ?id smash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id takarAne_kI_Xvani))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smash.clp 	smash2   "  ?id "  takarAne_kI_Xvani )" crlf))
)

;"smash","N","1.takarAne_kI_Xvani"
;The plate hit the floor with a smash. 
;--"2.takarAva"
;The impact of smash was so great that he crushed many people in the crowd with his car.
;--"3.xurGatanA"
;Due to technical defects car smash took place at work.
;
(defrule smash3
(declare (salience 4700))
(id-root ?id smash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZorase_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smash.clp 	smash3   "  ?id "  jZorase_mAra )" crlf))
)

;"smash","V","1.jZorase_mAranA"
;Street children throwing stones on the road smash the passing vehicles.
;--"2.parAjiwa_karanA/aMwa_karanA"
;World powers today are uniting to smash terrorism.
;
