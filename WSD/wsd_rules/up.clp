
(defrule up0
(declare (salience 5000))
(id-root ?id up)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) accept|acknowledge|add|admit|agree|allege|announce|answer|argue|arrange|assert|assume|assure|believe|boast|check|claim|comment|complain|concede|conclude|confirm|consider|contend|convince|decide|demonstrate|deny|determine|discover|dispute|doubt|dream|elicit|ensure|estimate|expect|explain|fear|feel|figure|find|foresee|forget|gather|guarantee|guess|hear|hold|hope|imagine|imply|indicate|inform|insist|judge|know|learn|maintain|mean|mention|note|notice|notify|object|observe|perceive|persuade|pledge|pray|predict|pretend|promise|prophesy|prove|read|realize|reason|reassure|recall|reckon|record|reflect|remark|remember|repeat|reply|report|require|resolve|reveal|say|see|sense|show|state|suggest|suppose|swear|teach|tell|think|threaten|understand|vow|warn|wish|worry|write)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa_ke_Upara_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  up.clp 	up0   "  ?id "  isa_ke_Upara_ki )" crlf))
)

(defrule up1
(declare (salience 4900))
(id-root ?id up)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_ke_Upara_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  up.clp 	up1   "  ?id "  usa_ke_Upara_ki )" crlf))
)

(defrule up2
(declare (salience 4800))
(id-root ?id up)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) river|valley)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_Upara_kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  up.clp 	up2   "  ?id "  ke_Upara_kI_ora )" crlf))
)

(defrule up3
(declare (salience 4700))
(id-root ?id up)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) road|bridge|street)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_Upara_Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  up.clp 	up3   "  ?id "  ke_Upara_Age )" crlf))
)

(defrule up4
(declare (salience 4600))
(id-root ?id up)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) against)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Amane_sAmane_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  up.clp 	up4   "  ?id "  Amane_sAmane_se )" crlf))
)

(defrule up5
(declare (salience 4500))
(id-root ?id up)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) before)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAmane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  up.clp 	up5   "  ?id "  ke_sAmane )" crlf))
)

(defrule up6
(declare (salience 4400))
(id-root ?id up)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) for)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlya_ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  up.clp 	up6   "  ?id "  mUlya_ke_liye )" crlf))
)

(defrule up7
(declare (salience 4300))
(id-root ?id up)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) on)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_Upara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  up.clp 	up7   "  ?id "  ke_Upara )" crlf))
)

(defrule up8
(declare (salience 4200))
(id-root ?id up)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jahAz_waka_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  up.clp 	up8   "  ?id "  jahAz_waka_ki )" crlf))
)

(defrule up9
(declare (salience 4100))
(id-root ?id up)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  up.clp 	up9   "  ?id "  Upara )" crlf))
)

;"up","Adj","1.Upara/ucca/Upara_vAlA"
;He is been really up after marriage.
;
(defrule up10
(declare (salience 4000))
(id-root ?id up)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  up.clp 	up10   "  ?id "  Upara_kI_ora )" crlf))
)

;"up","Adv","1.Upara_kI_ora"
;Lift your head up!
;
(defrule up11
(declare (salience 3900))
(id-root ?id up)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDZAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  up.clp 	up11   "  ?id "  caDZAva )" crlf))
)

;"up","N","1.caDZAva"
;The sales is on the up.
;
(defrule up12
(declare (salience 3800))
(id-root ?id up)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_Upara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  up.clp 	up12   "  ?id "  ke_Upara )" crlf))
)

;"up","Prep","1.para"
;He ran up the stairs.
;--"2.Upara"
;Look up in the sky.
;
(defrule up13
(declare (salience 3700))
(id-root ?id up)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  up.clp 	up13   "  ?id "  uTA )" crlf))
)

;"up","VT","1.uTAnA/caDZAnA"
;He upped his offer to 1 million dollars.
;
