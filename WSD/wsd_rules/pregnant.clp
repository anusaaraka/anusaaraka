
(defrule pregnant0
(declare (salience 5000))
(id-root ?id pregnant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garBavawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pregnant.clp 	pregnant0   "  ?id "  garBavawI )" crlf))
)

(defrule pregnant1
(declare (salience 4900))
(id-root ?id pregnant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garBavawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pregnant.clp 	pregnant1   "  ?id "  garBavawI )" crlf))
)

;"pregnant","Adj","1.garBavawI"
;She was four months pregnant when she died.
;
;
