;@@@ Added by Anita-19.3.2014 
;Gravity is always attractive while electromagnetic force can be attractive or repulsive. [ncert]
;गुरुत्वाकर्षण बल सदैव ही आकर्षी बल होता है, जबकि विद्युत चुम्बकीय बल आकर्षी अथवा प्रतिकर्षी भी.
(defrule repulsive0
(declare (salience 500))
(id-root ?id repulsive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  prawikarRI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " repulsive.clp  repulsive0  " ?id "   prawikarRI  )" crlf))
)

;@@@ Added by Anita-26.3.2014
;What a repulsive man?  [oxford learner's dictionary] [used parse no. 15]
;कितना भाव-शून्य आदमी है ?
(defrule repulsive1
(declare (salience 600))
(id-root ?id repulsive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  BAva_SUnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " repulsive.clp  repulsive1  " ?id "   BAva_SUnya  )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_repulsive1
(declare (salience 600))
(id-root ?id repulsive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  BAva_SUnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " repulsive.clp   sub_samA_repulsive1   "   ?id " BAva_SUnya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_repulsive1
(declare (salience 600))
(id-root ?id repulsive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  BAva_SUnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " repulsive.clp   obj_samA_repulsive1   "   ?id " BAva_SUnya )" crlf))
)
