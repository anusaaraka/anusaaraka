
(defrule after0
(declare (salience 5000))
(id-root ?id after)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) accept|acknowledge|add|admit|agree|allege|announce|answer|argue|arrange|assert|assume|assure|believe|boast|check|claim|comment|complain|concede|conclude|confirm|consider|contend|convince|decide|demonstrate|deny|determine|discover|dispute|doubt|dream|elicit|ensure|estimate|expect|explain|fear|feel|figure|find|foresee|forget|gather|guarantee|guess|hear|hold|hope|imagine|imply|indicate|inform|insist|judge|know|learn|maintain|mean|mention|note|notice|notify|object|observe|perceive|persuade|pledge|pray|predict|pretend|promise|prophesy|prove|read|realize|reason|reassure|recall|reckon|record|reflect|remark|remember|repeat|reply|report|require|resolve|reveal|say|see|sense|show|state|suggest|suppose|swear|teach|tell|think|threaten|understand|vow|warn|wish|worry|write)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa_ke_bAxa_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  after.clp 	after0   "  ?id "  isa_ke_bAxa_ki )" crlf))
)

(defrule after1
(declare (salience 4900))
(id-root ?id after)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_ke_bAxa_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  after.clp 	after1   "  ?id "  usa_ke_bAxa_ki )" crlf))
)

(defrule after2
(declare (salience 4800))
(id-root ?id after)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) noun)
(id-word =(+ ?id 1) animate)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pICe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  after.clp 	after2   "  ?id "  ke_pICe )" crlf))
)

(defrule after3
(declare (salience 4700))
(id-root ?id after)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) run)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pICe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  after.clp 	after3   "  ?id "  ke_pICe )" crlf))
)
; instead of word  used root -- Modified by manju

(defrule after4
(declare (salience 4600))
(id-root ?id after)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) name)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_upara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  after.clp 	after4   "  ?id "  ke_upara )" crlf))
)

;He is named after his father.
(defrule after5
(declare (salience 4500))
(id-root ?id after)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) call)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_upara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  after.clp 	after5   "  ?id "  ke_upara )" crlf))
)

(defrule after6
(declare (salience 4400))
(id-root ?id after)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAxa_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  after.clp 	after6   "  ?id "  bAxa_kA )" crlf))
)

;"after","Adj","1.bAxa_kA"
;We shall rectify these problems in the after years.
;
(defrule after7
(declare (salience 4300))
(id-root ?id after)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAxa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  after.clp 	after7   "  ?id "  bAxa_meM )" crlf))
)

;"after","Adv","1.bAxa_meM"
;The week after,I left for the U.S.
;--"2.pICe"
;He was ahead && I was standing after him.





;Added by Meena(28.5.10)
;She decided to search for her biological mother after her adoptive parents died.
(defrule after08
(declare (salience 4400))
(id-root ?id after)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id1 noun)
(kriyA-subject =(+ ?id1 1) ?id1)
(id-cat =(+ ?id1 1) verb_past_tense)
(subject-conjunction  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usake_bAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  after.clp     after08   "  ?id " usake_bAxa )" crlf))
)




;Added by Meena(19.3.10)
;After I am gone , I trust you will notice the river . 
(defrule after8
(declare (salience 4200))
(id-root ?id after)
?mng <-(meaning_to_be_decided ?id)
(subject-conjunction  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  after.clp     after8   "  ?id "  ke_bAxa )" crlf))
)




;
(defrule after9
(declare (salience 4200))
(id-root ?id after)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  after.clp 	after9   "  ?id "  ke_bAxa )" crlf))
)

;"after","Prep","1.ke_bAxa"
;We shall meet here the day after tomarrow.
;Day after day I tried to meet him but could not.
;My name comes after yours in the roll call.
;After all your ill conduct, I do not wish to speak to you.
;She arrived just after lunch.
;--"2.kI_ora"
;The children stared after the detectives dressed 
;I ran after him to tell him to meet me later.
;I'm after a job in the hospital.
;--"3.ke_bAre_meM"
;I inquired after him && come to know that he was ill.
;--"4.ke_anusaraNa_para"
;He was named after his grandfather && really emerged just like him.
;
