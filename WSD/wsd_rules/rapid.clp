
(defrule rapid0
(declare (salience 5000))
(id-root ?id rapid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rapid.clp 	rapid0   "  ?id "  wejZa )" crlf))
)

(defrule rapid1
(declare (salience 4900))
(id-root ?id rapid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIGra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rapid.clp 	rapid1   "  ?id "  SIGra )" crlf))
)

;"rapid","Adj","1.SIGra"
;There has been a rapid increase in the prices of gold && silver recently.
;
;
