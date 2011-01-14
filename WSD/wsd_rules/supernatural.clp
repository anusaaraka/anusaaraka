
(defrule supernatural0
(declare (salience 5000))
(id-root ?id supernatural)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lokAwIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  supernatural.clp 	supernatural0   "  ?id "  lokAwIwa )" crlf))
)

;"supernatural","Adj","1.lokAwIwa/alOkika"
;ghosts are suspenatural creatures.
;
(defrule supernatural1
(declare (salience 4900))
(id-root ?id supernatural)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lokAwIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  supernatural.clp 	supernatural1   "  ?id "  lokAwIwa )" crlf))
)

;"supernatural","N","1.lokAwIwa/alOkika"
;We should never believe in supernatural things.
;
