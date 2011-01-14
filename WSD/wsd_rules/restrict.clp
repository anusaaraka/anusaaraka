
(defrule restrict0
(declare (salience 5000))
(id-root ?id restrict)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id restricted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sImiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  restrict.clp  	restrict0   "  ?id "  sImiwa )" crlf))
)

;"restricted","Adj","1.sImiwa"
;The drug has only a restricted commercial use.
;--"2.Apa_logoM_ke_liye_varjiwa"    
;Enter a restricted zone.
;
(defrule restrict1
(declare (salience 4900))
(id-root ?id restrict)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parimiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  restrict.clp 	restrict1   "  ?id "  parimiwa )" crlf))
)

;"restrict","VT","1.parimiwa/sImiwa_karanA"
;Speed limit restricted to 40km.an hour within city limits. 
;--"2.Restrict your self to one cup of tea a day"
;
;