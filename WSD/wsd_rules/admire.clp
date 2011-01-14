
(defrule admire0
(declare (salience 5000))
(id-root ?id admire)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id admiring )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praSaMsA_yukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  admire.clp  	admire0   "  ?id "  praSaMsA_yukwa )" crlf))
)

;"admiring","Adj","1.praSaMsA_yukwa"
;Every one was giving admiring glances to the baby.
;
(defrule admire1
(declare (salience 4900))
(id-root ?id admire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSaMsA_kara))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  admire.clp 	admire1   "  ?id "  praSaMsA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-kriyA_id-object_viBakwi   " ?*wsd_dir* "  admire.clp    admire1   "  ?id " kI )"crlf)
)
)

;"admire","V","1.praSaMsA_karanA"
;I admire him for his superb acting.
;Don't you admire my new bicycle?
;
;
