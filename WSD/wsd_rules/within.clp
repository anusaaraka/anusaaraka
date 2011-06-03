

;Added by Meena(2.6.10)
;Within the relationship he feels ill-used most of the time.
(defrule within0
(declare (salience 4800))
(id-root ?id within)
?mng <-(meaning_to_be_decided ?id)
(kriyA-within_saMbanXI  ?kri  ?saMb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  within.clp    within0   "  ?id "  meM )" crlf))
)




(defrule within1
(declare (salience 5000))
(id-root ?id within)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) accept|acknowledge|add|admit|agree|allege|announce|answer|argue|arrange|assert|assume|assure|believe|boast|check|claim|comment|complain|concede|conclude|confirm|consider|contend|convince|decide|demonstrate|deny|determine|discover|dispute|doubt|dream|elicit|ensure|estimate|expect|explain|fear|feel|figure|find|foresee|forget|gather|guarantee|guess|hear|hold|hope|imagine|imply|indicate|inform|insist|judge|know|learn|maintain|mean|mention|note|notice|notify|object|observe|perceive|persuade|pledge|pray|predict|pretend|promise|prophesy|prove|read|realize|reason|reassure|recall|reckon|record|reflect|remark|remember|repeat|reply|report|require|resolve|reveal|say|see|sense|show|state|suggest|suppose|swear|teach|tell|think|threaten|understand|vow|warn|wish|worry|write)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa_ke_BIwara_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  within.clp 	within1   "  ?id "  isa_ke_BIwara_ki )" crlf))
)




(defrule within2
(declare (salience 4900))
(id-root ?id within)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_ke_BIwara_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  within.clp 	within2   "  ?id "  usa_ke_BIwara_ki )" crlf))
)




(defrule within3
(declare (salience 4800))
(id-root ?id within)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  within.clp 	within3   "  ?id "  BIwara )" crlf))
)

;"within","Adv","1.BIwara"
;Apply the paste within the mould.
;
(defrule within4
(declare (salience 4700))
(id-root ?id within)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_BIwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  within.clp 	within4   "  ?id "  ke_BIwara )" crlf))
)

;"within","Prep","1.ke_BIwara"
;I have to return within a day.
;--"2.kI_sImA_ke_anxara"
;Poor people find it hard to live within their income.
;
