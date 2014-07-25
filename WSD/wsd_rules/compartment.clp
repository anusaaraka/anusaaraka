;@@@ Added by Preeti(21-1-14)
;He found an empty first-class compartment. [Oxford Advanced Learner's Dictionary]
;use eka KAlI pahalA SreNI kA dibbA milA.
(defrule compartment1
(declare (salience 1050))
(id-root ?id compartment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 first-class|second-class|third-class)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dibbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compartment.clp 	compartment1   "  ?id "  dibbA )" crlf))
)

;@@@ Added by Preeti(21-1-14)
;The desk has a secret compartment. [Oxford Advanced Learner's Dictionary]
;meja meM eka gupwa KAnA hE.
(defrule compartment0
(declare (salience 1000))
(id-root ?id compartment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compartment.clp 	compartment0   "  ?id "  KAnA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_compartment1
(declare (salience 1050))
(id-root ?id compartment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 first-class|second-class|third-class)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dibbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " compartment.clp   sub_samA_compartment1   "   ?id " dibbA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_compartment1
(declare (salience 1050))
(id-root ?id compartment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 first-class|second-class|third-class)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dibbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " compartment.clp   obj_samA_compartment1   "   ?id " dibbA )" crlf))
)
