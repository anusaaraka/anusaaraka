
(defrule idle0
(declare (salience 5000))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyarWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idle.clp 	idle0   "  ?id "  vyarWa )" crlf))
)

;"idle","Adj","1.vyarWa"
;The factory machines lay idle during the worker's strike.
;
(defrule idle1
(declare (salience 4900))
(id-root ?id idle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bekAra_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idle.clp 	idle1   "  ?id "  bekAra_raha )" crlf))
)

;"idle","V","1.bekAra_rahanA"
;--"2.bekAra_bETanA"
;Stop idling, help me in my work.
;
