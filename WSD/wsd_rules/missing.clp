;@@@ Added by Nandini(3-1-14)
;Two files have gone missing.[oxford advanced learner's dictionary]
(defrule missing0
(declare (salience 100))
(id-word ?id missing)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lApawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  missing.clp 	missing0   "  ?id " lApawA)" crlf))
)

;@@@ Added by Nandini(3-1-14)
;Detective stories are always about a missing piece of the puzzle. [via mail]
(defrule missing1
(declare (salience 200))
(id-word ?id missing)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 piece)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KoyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  missing.clp 	missing1   "  ?id "  KoyA_huA)" crlf))
)

;@@@ Added by Nandini(3-1-14)
;Fill in the missing words in this text.[oxford advanced learner's dictionary]
(defrule missing2
(declare (salience 300))
(id-word ?id missing)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 word)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAyaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  missing.clp 	missing2   "  ?id "  gAyaba)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_missing1
(declare (salience 200))
(id-word ?id missing)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 piece)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KoyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " missing.clp   sub_samA_missing1   "   ?id " KoyA_huA)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_missing1
(declare (salience 200))
(id-word ?id missing)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 piece)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KoyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " missing.clp   obj_samA_missing1   "   ?id " KoyA_huA)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_missing2
(declare (salience 300))
(id-word ?id missing)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 word)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAyaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " missing.clp   sub_samA_missing2   "   ?id " gAyaba)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_missing2
(declare (salience 300))
(id-word ?id missing)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 word)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAyaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " missing.clp   obj_samA_missing2   "   ?id " gAyaba)" crlf))
)
