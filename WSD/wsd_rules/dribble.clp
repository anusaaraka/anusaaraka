
(defrule dribble0
(declare (salience 5000))
(id-root ?id dribble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tapakana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dribble.clp 	dribble0   "  ?id "  tapakana )" crlf))
)

;"dribble","N","1.tapakana/tapakA-tapakI"
;There was a dribble of oil out side the bottle.
;--"2.bacce_kI_lAra_nikalanA"
;There is dribble all over your clothes.   
;
(defrule dribble1
(declare (salience 4900))
(id-root ?id dribble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tapakanA_yA_tapakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dribble.clp 	dribble1   "  ?id "  tapakanA_yA_tapakA )" crlf))
)

;"dribble","V","1.tapakanA_yA_tapakAnA"
;Juice dribbled down the side of the packet. 
;--"2.lAra_kA_giranA"
;Please take care the baby doesn't dribble over your dress. 
;--"3.Kela_meM_geMxa_ko_Age_kI_waraPa_le_jAnA"
;He dribbled the football towards the goalkeeper. 
;
