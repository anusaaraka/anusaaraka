;@@@ Added by Preeti(21-12-13)
;She is my cousin. [ Oxford Advanced Learner's Dictionary]
;vaha merI cacerI_mamerI_mOserI_yA_PuPerI bahana hE.
(defrule cousin0
(declare (salience 1000))
(id-root ?id cousin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 she)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cacerI_mamerI_mOserI_yA_PuPerI_bahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cousin.clp 	cousin0   "  ?id "  cacerI_mamerI_mOserI_yA_PuPerI_bahana )" crlf))
)

;@@@ Added by Preeti(21-12-13)
;He is a distant cousin of mine.[ Oxford Advanced Learner's Dictionary] 
;vaha merA eka xUra kA cacerA_mamerA_mOserA_yA_PuPerA BAI hE.
(defrule cousin1
(declare (salience 1000))
(id-root ?id cousin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 he)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cacerA_mamerA_mOserA_yA_PuPerA_BAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cousin.clp 	cousin1   "  ?id "  cacerA_mamerA_mOserA_yA_PuPerA_BAI )" crlf))
)
;#############################Defaults rule#######################################
;@@@ Added by Preeti(21-12-13)
;Asian elephants are smaller than their African cousins. [ Oxford Advanced Learner's Dictionary]
;eSiyAI hAWI unake aPrIkI saMbaMXI se CotA howe hEM.
(defrule cousin2
(declare (salience 500))
(id-root ?id cousin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMbaMXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cousin.clp 	cousin2   "  ?id "  saMbaMXI )" crlf))
)
