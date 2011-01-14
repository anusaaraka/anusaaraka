
(defrule renowned0
(declare (salience 5000))
(id-root ?id renowned)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasixXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  renowned.clp 	renowned0   "  ?id "  prasixXa )" crlf))
)

(defrule renowned1
(declare (salience 4900))
(id-root ?id renowned)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  renowned.clp 	renowned1   "  ?id "  nAmI )" crlf))
)

;"renowned","Adj","1.nAmI/prasixXa"
;P.T.Usha of kerala is a renowned racer.
;
;
