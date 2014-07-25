
(defrule idle0
(declare (salience 5000))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyarWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idle.clp 	idle0   "  ?id "  vyarWa )" crlf))
)

;"idle","Adj","1.vyarWa"
;The factory machines lay idle during the worker's strike.
;
(defrule idle1
(declare (salience 4900))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bekAra_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idle.clp 	idle1   "  ?id "  bekAra_raha )" crlf))
)

;"idle","V","1.bekAra_rahanA"
;--"2.bekAra_bETanA"
;Stop idling, help me in my work.
;
;@@@ Added by Prachi Rathore[27-3-14]
;They idled the days away, talking and watching television.[oald]
;उन्होंने दूरदर्शन देखते हुये और बातचीत करते हुये , दिनों समय गँवाया . 
(defrule idle2
(declare (salience 5000))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaya_gazvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " idle.clp 	idle2  "  ?id "  " ?id1 "  samaya_gazvA  )" crlf))
)

;@@@ Added by Prachi Rathore[27-3-14]
;They idled along by the river. [oald]
;वे नदी से के किनारे खाली चले . 
(defrule idle3
(declare (salience 5000))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idle.clp 	idle3   "  ?id "  KAlI_cala )" crlf))
)

;@@@ Added by Prachi Rathore[27-3-14]
;. She left the car idling at the roadside. [oald]
;उसने सडक के किनारे में खाली चलती हुए गाडी छोडी . 
(defrule idle4
(declare (salience 5000))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idle.clp 	idle4   "  ?id "  KAlI_cala )" crlf))
)


;@@@ Added by Prachi Rathore[27-3-14]
;It was just an idle threat.[oald]
;यह सिर्फ कोरी धमकी  थी . 
(defrule idle5
(declare (salience 5100))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 threat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id korI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idle.clp 	idle5   "  ?id "  korI )" crlf))
)


;@@@ Added by Prachi Rathore[27-3-14]
;an idle student[oald]
;आलसी विद्यार्थी . 
(defrule idle6
(declare (salience 5100))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AlasI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idle.clp 	idle6   "  ?id "  AlasI )" crlf))
)


;@@@ Added by Prachi Rathore[27-3-14]
;The strikes have idled nearly 4000 workers. [oald]
;स्ट्राइक करीब करीब 4000 कार्यकर्ताओं को बेकार कर चुकी हैं . 
(defrule idle7
(declare (salience 4950))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bekAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idle.clp 	idle7   "  ?id "  bekAra_kara )" crlf))
)


;@@@ Added by Prachi Rathore[27-3-14]
; In idle moments, he carved wooden figures. [oald]
;खाली क्षणों में, उसने लकडी काटकर आकृतियाँ बनायी .  
(defrule idle8
(declare (salience 5100))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 moment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idle.clp 	idle8   "  ?id "  KAlI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_idle5
(declare (salience 5100))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 threat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id korI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " idle.clp   sub_samA_idle5   "   ?id " korI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_idle5
(declare (salience 5100))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 threat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id korI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " idle.clp   obj_samA_idle5   "   ?id " korI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_idle6
(declare (salience 5100))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AlasI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " idle.clp   sub_samA_idle6   "   ?id " AlasI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_idle6
(declare (salience 5100))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AlasI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " idle.clp   obj_samA_idle6   "   ?id " AlasI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_idle8
(declare (salience 5100))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 moment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " idle.clp   sub_samA_idle8   "   ?id " KAlI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_idle8
(declare (salience 5100))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 moment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " idle.clp   obj_samA_idle8   "   ?id " KAlI )" crlf))
)
