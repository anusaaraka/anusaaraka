;@@@ Added by Preeti(8-11-13)
;My pen cap has a hole in it. 
;mere pena ke Dakkan ameM Cexa hE.
(defrule cap2
(declare (salience 5050))
(id-root ?id cap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-cat_coarse ?id1 noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dakkana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cap.clp 	cap2   "  ?id "   Dakkana)" crlf))
)

;@@@ Added by Preeti(8-11-13)
;There are three new caps in the side. [ Oxford Advanced Learner's Dictionary]
;tIma meM wIna naye KilAdzI hEM.
(defrule cap3
(declare (salience 6000))
(id-root ?id cap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id ?id1)
(id-root ?id1 side|team)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KilAdzI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cap.clp 	cap3   "  ?id "   KilAdzI)" crlf))
)

;@@@ Added by Preeti(8-11-13)[ Oxford Advanced Learner's Dictionary]
;The government has placed a cap on local council spending. 
;sarakAra ne sWAnIya pariRaxa ke Karca karane para uccawama sImA nirXAriwa kI hE.
(defrule cap4
(declare (salience 6050))
(id-root ?id cap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI  ?id ?id1)
(id-root ?id1 spend)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uccawama_sImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cap.clp 	cap4   "  ?id "   uccawama_sImA)" crlf))
)

;@@@ Added by Preeti(8-11-13)
;He was capped 30 times by Scotland. [the free dictionary]
;vaha skoYtalEMda ke xvArA 30 bAra cunA gayA WA.
(defrule cap5
(declare (salience 4950))
(id-root ?id cap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cap.clp 	cap5   "  ?id "  cuna )" crlf))
)

;@@@ Added by Preeti(8-11-13)
;The mountains were capped with snow. [Cambridge Learner’s Dictionary]
;parvawa baraPa se Dake hue We.
(defrule cap6
(declare (salience 5000))
(id-root ?id cap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DakA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cap.clp 	cap6   "  ?id "  DakA_ho )" crlf))
)

;@@@ Added by Preeti(6-11-13)
;The interest rate has been capped at 5 %. 
;byAja xara 5% para uccawama sImA niSciwa ho cukA hE.
(defrule cap7
(declare (salience 5050))
(id-root ?id cap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 rate)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uccawama_sImA_niSciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cap.clp 	cap7   "  ?id "   uccawama_sImA_niSciwa)" crlf))
)

;#############################Defaults rule#######################################
(defrule cap0
(declare (salience 5000))
(id-root ?id cap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id topI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cap.clp 	cap0   "  ?id "  topI )" crlf))
)

(defrule cap1
(declare (salience 4900))
(id-root ?id cap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dakkana_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cap.clp 	cap1   "  ?id "  Dakkana_lagA )" crlf))
)

;################### Old Examples ####################
;"cap","VT","1.Dakkana_lagAnA"
;The bottles were capped tightly.
;
;
;################### Need to be handled ####################
;He won his first cap for England against France.
;parser problem
;He has been capped more than 30 times for Wales. 
