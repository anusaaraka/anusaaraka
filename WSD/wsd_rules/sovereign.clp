
(defrule sovereign0
(declare (salience 5000))
(id-root ?id sovereign)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAsakIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sovereign.clp 	sovereign0   "  ?id "  SAsakIya )" crlf))
)

;"sovereign","Adj","1.SAsakIya"
(defrule sovereign1
(declare (salience 4900))
(id-root ?id sovereign)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAsaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sovereign.clp 	sovereign1   "  ?id "  SAsaka )" crlf))
)

;"sovereign","N","1.SAsaka"
;King Dasaratha was a sovereign.
;
