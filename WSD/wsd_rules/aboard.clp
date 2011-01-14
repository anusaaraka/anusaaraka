
(defrule aboard0
(declare (salience 5000))
(id-root ?id aboard)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) accept|acknowledge|add|admit|agree|allege|announce|answer|argue|arrange|assert|assume|assure|believe|boast|check|claim|comment|complain|concede|conclude|confirm|consider|contend|convince|decide|demonstrate|deny|determine|discover|dispute|doubt|dream|elicit|ensure|estimate|expect|explain|fear|feel|figure|find|foresee|forget|gather|guarantee|guess|hear|hold|hope|imagine|imply|indicate|inform|insist|judge|know|learn|maintain|mean|mention|note|notice|notify|object|observe|perceive|persuade|pledge|pray|predict|pretend|promise|prophesy|prove|read|realize|reason|reassure|recall|reckon|record|reflect|remark|remember|repeat|reply|report|require|resolve|reveal|say|see|sense|show|state|suggest|suppose|swear|teach|tell|think|threaten|understand|vow|warn|wish|worry|write)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa_para_savAra_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aboard.clp 	aboard0   "  ?id "  isa_para_savAra_ki )" crlf))
)

(defrule aboard1
(declare (salience 4900))
(id-root ?id aboard)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_para_savAra_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aboard.clp 	aboard1   "  ?id "  usa_para_savAra_ki )" crlf))
)

(defrule aboard2
(declare (salience 4800))
(id-root ?id aboard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id savAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aboard.clp 	aboard2   "  ?id "  savAra )" crlf))
)

;"aboard","Adv","1.savAra"
;An aircraft crashed killing all people aboard.
;
(defrule aboard3
(declare (salience 4700))
(id-root ?id aboard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para_savAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aboard.clp 	aboard3   "  ?id "  para_savAra )" crlf))
)

;"aboard","Prep","1.para_savAra"
;I was already aboard the ship.
;
;SabdasUtra explanation starts here 
;LEVEL 
;Headword : aboard
;
;Examples --
;
;"aboard","Adv","1.savAra"
;An aircraft crashed killing all people aboard.
;eka havAI jahAjZa krESa ho gayA jisase usameM savAra saBI loga mara gaye.
;
;"aboard","Prep","1.para_savAra"
;She was already aboard the ship.
;vaha pahale hI se jahAjZa para savAra WI.
;
;
;      sUwra : savAra 
;      
;SabdasUtra explanation ends here
