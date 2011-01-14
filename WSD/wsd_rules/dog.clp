
(defrule dog0
(declare (salience 5000))
(id-root ?id dog)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dogged )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id haTI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dog.clp  	dog0   "  ?id "  haTI )" crlf))
)

;"dogged","Adj","1.haTI"
;Dogged persistence
;
(defrule dog1
(declare (salience 4900))
(id-root ?id dog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuwwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dog.clp 	dog1   "  ?id "  kuwwA )" crlf))
)

;"dog","N","1.kuwwA"
;The dog barked all night
;You lucky dog
;You dirty dog
;
(defrule dog2
(declare (salience 4800))
(id-root ?id dog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICe_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dog.clp 	dog2   "  ?id "  pICe_laga )" crlf))
)

;"dog","VT","1.pICe_laganA"
