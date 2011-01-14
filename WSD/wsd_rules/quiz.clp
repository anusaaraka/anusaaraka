
(defrule quiz0
(declare (salience 5000))
(id-root ?id quiz)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSnowwarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quiz.clp 	quiz0   "  ?id "  praSnowwarI )" crlf))
)

;"quiz","N","1.praSnowwarI"
;Participation in quiz programmes keeps you informed.
;
(defrule quiz1
(declare (salience 4900))
(id-root ?id quiz)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSna_pUCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quiz.clp 	quiz1   "  ?id "  praSna_pUCa )" crlf))
)

;"quiz","VT","1.praSna_pUCanA"
;She was quizzed by the teacher.
;
