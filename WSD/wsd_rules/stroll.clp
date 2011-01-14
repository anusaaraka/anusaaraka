
(defrule stroll0
(declare (salience 5000))
(id-root ?id stroll)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cahala_kaxamI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stroll.clp 	stroll0   "  ?id "  cahala_kaxamI )" crlf))
)

;"stroll","N","1.cahala_kaxamI"
;Stroll in the beach is very pleasure giving.
;
(defrule stroll1
(declare (salience 4900))
(id-root ?id stroll)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tahala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stroll.clp 	stroll1   "  ?id "  tahala )" crlf))
)

;"stroll","V","1.tahalanA"
;He is strolling on the beach.
;
