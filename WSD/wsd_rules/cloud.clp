;@@@ Added by Preeti(8-11-13)
;Steam had clouded the mirror. [ Oxford Advanced Learner's Dictionary]
;BApa xarpaNa XuzXalA_kara cukI WI.
(defrule cloud3
(declare (salience 1050))
(id-root ?id cloud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 steam)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  XuzXalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cloud.clp 	cloud3   "  ?id "   XuzXalA_kara )" crlf))
)

;@@@ Added by Preeti(8-11-13)
;Her eyes clouded with tears. [ Oxford Advanced Learner's Dictionary]
;usakI AzKeM AzsU se XuzXalI huIM.
(defrule cloud6
(declare (salience 1050))
(id-root ?id cloud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not(kriyA-object  ?id ?))
(kriyA-with_saMbanXI  ?id ?id1)
(id-root ?id1 tears)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XuzXalA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cloud.clp 	cloud6   "  ?id "  XuzXalA_ho )" crlf))
)

;@@@ Added by Preeti(8-11-13)
;It was beginning to cloud over. [ Oxford Advanced Learner's Dictionary]
;yaha bAxala CAnA AramBa.
(defrule cloud4
(declare (salience 1070))
(id-root ?id cloud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 over)
(kriyA-subject  ?id ?id2)
(id-root ?id2 it)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAxala_CA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  cloud.clp 	cloud4   "  ?id "  "  ?id1 " bAxala_CA_jA )" crlf))
)

;@@@ Added by Preeti(8-11-13)
;Her father's illness cast a cloud over her wedding day. [ Oxford Advanced Learner's Dictionary]
;usake piwA kI bImArI ne usake vivAha_ke xina kA majA_kirakirA kara xiyA.
(defrule cloud5
(declare (salience 1040))
(id-root ?id cloud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ? ?id)
(id-word =(+ ?id 1) over)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) majA_kirakirA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  cloud.clp 	cloud5   "  ?id " "(+ ?id 1)"  majA_kirakirA_kara )" crlf))
)

;@@@ Added by Preeti(8-11-13)
;Her face clouded over with anger. [ Oxford Advanced Learner's Dictionary]
;usakA ceharA kroXa se Bara gayA.
(defrule cloud7
(declare (salience 1040))
(id-root ?id cloud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 over)
;(not(kriyA-object  ?id ?))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  cloud.clp 	cloud7   "  ?id "  "  ?id1 " Bara )" crlf))
)

;#############################Defaults rule#######################################
;@@@ Added by Preeti(8-11-13)
;The sun went behind a cloud. [ Oxford Advanced Learner's Dictionary]
;sUraja bAxala ke pICe calA gayA.
(defrule cloud0
(declare (salience 1000))
(id-root ?id cloud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cloud.clp 	cloud0   "  ?id "  bAxala )" crlf))
)

;@@@ Added by Preeti(8-11-13)[ Oxford Advanced Learner's Dictionary]
;Suspicion clouded his face. 
;Saka se usakA ceharA BarA WA.
(defrule cloud1
(declare (salience 1000))
(id-root ?id cloud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cloud.clp 	cloud1   "  ?id "  Bara )" crlf))
)
