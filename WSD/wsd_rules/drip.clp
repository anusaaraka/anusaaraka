
(defrule drip0
(declare (salience 5000))
(id-root ?id drip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dripping )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bahuwa_gIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  drip.clp  	drip0   "  ?id "  bahuwa_gIlA )" crlf))
)

;"dripping","Adj","1.bahuwa_gIlA"
;Her face was dripping with sweat.
;
(defrule drip1
(declare (salience 4900))
(id-root ?id drip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dripping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mAMsarasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  drip.clp  	drip1   "  ?id "  mAMsarasa )" crlf))
)

;"dripping","N","1.mAMsarasa"
;The doctor has advised her to take dripping of meat.
;
(defrule drip2
(declare (salience 4800))
(id-root ?id drip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tapakana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drip.clp 	drip2   "  ?id "  tapakana )" crlf))
)

;"drip","N","1.tapakana/tapaka"
;There is a continous drip of water from a leaky pipe line.
;--"2.cikiwsIya_yaMwra{jisase_warala_Bojya_paxArWa_yA_xavA_marIja_kI_SirA_meM_BejI_jAwI_hE}"
;Put the patient on a drip.  
;
(defrule drip3
(declare (salience 4700))
(id-root ?id drip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tapakanA_yA_tapakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drip.clp 	drip3   "  ?id "  tapakanA_yA_tapakA )" crlf))
)

;"drip","V","1.tapakanA_yA_tapakAnA"
;Water is dripping from the roof.
;Rain is dripping from the trees.
;
