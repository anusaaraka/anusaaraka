
(defrule wax0
(declare (salience 5000))
(id-root ?id wax)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id moma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wax.clp 	wax0   "  ?id "  moma )" crlf))
)

;"wax","N","1.moma"
;Buy some wax for the party
;
(defrule wax1
(declare (salience 4900))
(id-root ?id wax)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wax.clp 	wax1   "  ?id "  baDZa )" crlf))
)

;"wax","VI","1.baDZanA"
;The moon waxes
;
(defrule wax2
(declare (salience 4800))
(id-root ?id wax)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id moma_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wax.clp 	wax2   "  ?id "  moma_lagA )" crlf))
)

;"wax","VT","1.moma_lagAnA"
;Wax the doll
;
