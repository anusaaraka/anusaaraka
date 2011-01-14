
(defrule elder0
(declare (salience 5000))
(id-root ?id elder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jyeRTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elder.clp 	elder0   "  ?id "  jyeRTa )" crlf))
)

;"elder","Adj","1.jyeRTa"
;Vasu is my elder brother.
;
(defrule elder1
(declare (salience 4900))
(id-root ?id elder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bujZurga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elder.clp 	elder1   "  ?id "  bujZurga )" crlf))
)

;"elder","N","1.bujZurga"
;Respect your elders.
;
