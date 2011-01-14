
(defrule precise0
(declare (salience 5000))
(id-root ?id precise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaWAwaWya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  precise.clp 	precise0   "  ?id "  yaWAwaWya )" crlf))
)

(defrule precise1
(declare (salience 4900))
(id-root ?id precise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaWAwaWya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  precise.clp 	precise1   "  ?id "  yaWAwaWya )" crlf))
)

;"precise","Adj","1.yaWAwaWya"
;The writer is well known for his precis-writings.
;Be precise in your comments.
;
;
