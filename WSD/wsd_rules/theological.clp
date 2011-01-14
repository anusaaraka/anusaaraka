
(defrule theological0
(declare (salience 5000))
(id-root ?id theological)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xevawA_saMbaMXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  theological.clp 	theological0   "  ?id "  xevawA_saMbaMXI )" crlf))
)

(defrule theological1
(declare (salience 4900))
(id-root ?id theological)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXyAwmavixyA_sambanXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  theological.clp 	theological1   "  ?id "  AXyAwmavixyA_sambanXI )" crlf))
)

;"theological","Adj","1.AXyAwmavixyA_sambanXI"
;There are theological books written by great philosophers.
;
;
