


;Added by Meena(25.5.10)
;She decided to search for her biological mother after her adoptive parents died .
(defrule biological0
(declare (salience 5000))
(id-root ?id biological)
;(Any)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 mother|father|brother|sister)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "   biological.clp      biological0  "  ?id "  sagA )" crlf))
)





;Salience reduced by Meena(25.5.10)
;Added by Veena Bagga (31-12-09) 
(defrule biological1
(declare (salience 0))
;(declare (salience 6400))
(id-root ?id biological)
;(Any)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jEvika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "   biological.clp      biological1  "  ?id "  jEvika)" crlf))
)
;She decided to search her biological mother . 

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_biological0
(declare (salience 5000))
(id-root ?id biological)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mother|father|brother|sister)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " biological.clp   sub_samA_biological0   "   ?id " sagA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_biological0
(declare (salience 5000))
(id-root ?id biological)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mother|father|brother|sister)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " biological.clp   obj_samA_biological0   "   ?id " sagA )" crlf))
)
