
(defrule probe0
(declare (salience 5000))
(id-root ?id probe)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id probing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jAzca_saMbanXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  probe.clp  	probe0   "  ?id "  jAzca_saMbanXI )" crlf))
)

;"probing","Adj","1.jAzca saMbanXI"
;This probing questions sounded insulting.
;
(defrule probe1
(declare (salience 4900))
(id-root ?id probe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id salAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  probe.clp 	probe1   "  ?id "  salAI )" crlf))
)

;"probe","N","1.salAI"
;The doctor used a probe to examine her throat.
;--"2.wahakZIkAwa"
;A probe was ordered into the fodder scam by Supreme Court.
;
(defrule probe2
(declare (salience 4800))
(id-root ?id probe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAzca_padawAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  probe.clp 	probe2   "  ?id "  jAzca_padawAla_kara )" crlf))
)

;"probe","V","1.jAzca_padawAla_karanA"
;She probed the ground ahead with a stick.
;
