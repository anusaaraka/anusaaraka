
(defrule across0
(declare (salience 5000))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) accept|acknowledge|add|admit|agree|allege|announce|answer|argue|arrange|assert|assume|assure|believe|boast|check|claim|comment|complain|concede|conclude|confirm|consider|contend|convince|decide|demonstrate|deny|determine|discover|dispute|doubt|dream|elicit|ensure|estimate|expect|explain|fear|feel|figure|find|foresee|forget|gather|guarantee|guess|hear|hold|hope|imagine|imply|indicate|inform|insist|judge|know|learn|maintain|mean|mention|note|notice|notify|object|observe|perceive|persuade|pledge|pray|predict|pretend|promise|prophesy|prove|read|realize|reason|reassure|recall|reckon|record|reflect|remark|remember|repeat|reply|report|require|resolve|reveal|say|see|sense|show|state|suggest|suppose|swear|teach|tell|think|threaten|understand|vow|warn|wish|worry|write)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa_ke_pAra_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp 	across0   "  ?id "  isa_ke_pAra_ki )" crlf))
)

; He told us about who killed whom.
(defrule across1
(declare (salience 4900))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_ke_oAra_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp 	across1   "  ?id "  usa_ke_oAra_ki )" crlf))
)

(defrule across2
(declare (salience 4800))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArapAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp 	across2   "  ?id "  ArapAra )" crlf))
)

;"across","Adv","1.ArapAra"
;I helped the old lady across.
;--"2.usa_pAra"
;We shall leave Delhi today && we should be across in Wagah by night.
;--"3.koI_eka_xiSA_meM"
;He leaned across to pick up his wallet.




;Added by Meena(15.01.10)
;The jet zoomed across the sky.
(defrule across3
(declare (salience 4800))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(kriyA-across_saMbanXI  =(- ?id 1) ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp    across3   "  ?id "  meM )" crlf))
)




;Salience reduced by Meena(18.01.10)
(defrule across4
(declare (salience 0))
;(declare (salience 4700))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_saBI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp 	across4   "  ?id "  ke_saBI_ora )" crlf))
)

;"across","Prep","1.saBI_ora"
;The President's address to the nation was broadcasted across the country.
;--"2.usa_pAra_se"
;My friend shouted at me across the road.
;--"3.ke_Upara_yA_sAmane"
;She folded her arms across her chest while talking.
;--"4.vahAz_se_yahAz"
;The student drew a line across the sheet.
;
