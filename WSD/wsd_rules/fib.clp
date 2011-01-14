
(defrule fib0
(declare (salience 5000))
(id-root ?id fib)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JUTa_bolanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fib.clp 	fib0   "  ?id "  JUTa_bolanA )" crlf))
)

;"fib","N","1.JUTa_bolanA"
;His explanation was a fib.
;
(defrule fib1
(declare (salience 4900))
(id-root ?id fib)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gappa_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fib.clp 	fib1   "  ?id "  gappa_mAra )" crlf))
)

;"fib","V","1.gappa_mAranA"
