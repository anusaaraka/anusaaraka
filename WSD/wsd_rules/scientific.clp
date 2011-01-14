
(defrule scientific0
(declare (salience 5000))
(id-root ?id scientific)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vEjFAnika-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scientific.clp 	scientific0   "  ?id "  vEjFAnika- )" crlf))
)

(defrule scientific1
(declare (salience 4900))
(id-root ?id scientific)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vEjFAnika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scientific.clp 	scientific1   "  ?id "  vEjFAnika )" crlf))
)

;"scientific","Adj","1.vEjFAnika"
;New scientific discoveries had made life very simple && comfortable.
;
;
