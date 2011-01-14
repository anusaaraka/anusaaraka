
(defrule handy0
(declare (salience 5000))
(id-root ?id handy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nipuNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handy.clp 	handy0   "  ?id "  nipuNa )" crlf))
)

;"handy","Adj","1.nipuNa"
;Arjuna was handy in archery .
;arjuna XanurvixyA meM nipuNa WA.
;
(defrule handy1
(declare (salience 4900))
(id-root ?id handy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handy.clp 	handy1   "  ?id "  xakRa )" crlf))
)

;"handy","N","1.xakRa/sulaBa"
