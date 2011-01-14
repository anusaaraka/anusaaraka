
(defrule oriental0
(declare (salience 5000))
(id-root ?id oriental)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrvI-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oriental.clp 	oriental0   "  ?id "  pUrvI- )" crlf))
)

(defrule oriental1
(declare (salience 4900))
(id-root ?id oriental)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrvI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oriental.clp 	oriental1   "  ?id "  pUrvI )" crlf))
)

;"oriental","Adj","1.pUrvI"
;All India oriental conference is going on.
;
;
