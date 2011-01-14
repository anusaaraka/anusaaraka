
(defrule resident0
(declare (salience 5000))
(id-root ?id resident)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nivAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resident.clp 	resident0   "  ?id "  nivAsI )" crlf))
)

;"resident","Adj","1.nivAsI"
;The town's resident population has gone up.
;
(defrule resident1
(declare (salience 4900))
(id-root ?id resident)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nivAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resident.clp 	resident1   "  ?id "  nivAsI )" crlf))
)

;"resident","N","1.nivAsI"
;The restaurant is open to non-residents also.
;He is a resident of Japan.  
;
