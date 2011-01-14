
(defrule wet0
(declare (salience 5000))
(id-root ?id wet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wet.clp 	wet0   "  ?id "  gIlA )" crlf))
)

;"wet","Adj","1.gIlA"
;The carpet is wet.
;
(defrule wet1
(declare (salience 4900))
(id-root ?id wet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wet.clp 	wet1   "  ?id "  varRA )" crlf))
)

;"wet","N","1.varRA"
;Keep away from the wet.
;--"2.gIlApana"
;There is some wet on the wall.
;--"3.nIrasa"
;He doesn't show any emotions.He seems to be a wet person.
;
(defrule wet2
(declare (salience 4800))
(id-root ?id wet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gIlA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wet.clp 	wet2   "  ?id "  gIlA_kara )" crlf))
)

;"wet","VT","1.gIlA_karanA"
;Don't get wet in the rain.
;
