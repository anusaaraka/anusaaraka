
(defrule tropic0
(declare (salience 5000))
(id-root ?id tropic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uRNakatibaMXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tropic.clp 	tropic0   "  ?id "  uRNakatibaMXI )" crlf))
)

;"tropic","Adj","1.uRNakatibaMXI"
;The flora && fauna of the tropics are different from the rest of the world.
;
(defrule tropic1
(declare (salience 4900))
(id-root ?id tropic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uRNakatibanXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tropic.clp 	tropic1   "  ?id "  uRNakatibanXa )" crlf))
)

;"tropic","N","1.uRNakatibanXa"
;The summer in the tropics can be very hot.
;
