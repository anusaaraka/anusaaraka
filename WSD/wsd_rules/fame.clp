
(defrule fame0
(declare (salience 5000))
(id-root ?id fame)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id famed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id prasixXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fame.clp  	fame0   "  ?id "  prasixXa )" crlf))
)

;"famed","Adj","1.prasixXa/prawiRTiwa"
;He lives near the famed Kovalam Beach.
;
(defrule fame1
(declare (salience 4900))
(id-root ?id fame)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasixXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fame.clp 	fame1   "  ?id "  prasixXi )" crlf))
)

;"fame","N","1.prasixXi/prawiRTA"
;Sachin has earned lot of fame as a cricketer.
;
;