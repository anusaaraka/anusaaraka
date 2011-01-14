
(defrule rejoin0
(declare (salience 5000))
(id-root ?id rejoin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rejoin.clp 	rejoin0   "  ?id "  jodZa )" crlf))
)

;"rejoin","V","1.jodZa[prawyuwwara_xe]"
;--"2.baxale_meM_uwwara_xenA"
;He rejoined that whatever was said was quite right.
;
(defrule rejoin1
(declare (salience 4900))
(id-root ?id rejoin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rejoin.clp 	rejoin1   "  ?id "  Pira_milA )" crlf))
)

;"rejoin","VTI","1.Pira_milAnA"
;The innocent child tried to rejoin his broken toy.
;--"2.Pira_se_sammiliwa_honA"
;This stream rejoins the main river further on.  
;
