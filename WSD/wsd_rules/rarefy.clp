
(defrule rarefy0
(declare (salience 5000))
(id-root ?id rarefy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id rarefied )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sImiwa_samuxAya_se_sambanXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rarefy.clp  	rarefy0   "  ?id "  sImiwa_samuxAya_se_sambanXiwa )" crlf))
)

;"rarefied","Adj","1.sImiwa_samuxAya_se_sambanXiwa"
;University professors always live in a rarefied academic atmosphere. 
;
(defrule rarefy1
(declare (salience 4900))
(id-root ?id rarefy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_GanA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rarefy.clp 	rarefy1   "  ?id "  kama_GanA_ho )" crlf))
)

;"rarefy","VTI","1.kama_GanA_honA/pawalA_karanA_yA_honA"
;The rarefied air at high altitudes.
;
;