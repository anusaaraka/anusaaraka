;@@@ Added by Shirisha Manju 30-4-14  -- Suggested by Chaitanya Sir
;Man is a social animal.
;AxamI eka sAmAjika prANI hE.
(defrule animal00
(declare (salience 5000))
(id-root ?id animal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 social)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prANI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  animal.clp   animal00   "  ?id "  prANI )" crlf))
)

;--------------------------- Default rules ---------------------------------

(defrule animal0
(id-root ?id animal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paSu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  animal.clp 	animal0   "  ?id "  paSu )" crlf))
)

(defrule animal1
(id-root ?id animal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pASavika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  animal.clp 	animal1   "  ?id "  pASavika )" crlf))
)

;"animal","Adj","1.pASavika/jaMgalI"
;His behaviour with his wife is just like animal.
;
;
;Removed 'salience' for default rules by Shirisha Manju

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_animal00
(declare (salience 5000))
(id-root ?id animal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 social)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prANI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " animal.clp   sub_samA_animal00   "   ?id " prANI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_animal00
(declare (salience 5000))
(id-root ?id animal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 social)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prANI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " animal.clp   obj_samA_animal00   "   ?id " prANI )" crlf))
)
