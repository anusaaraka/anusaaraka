
(defrule depressive0
(declare (salience 5000))
(id-root ?id depressive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasAxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depressive.clp 	depressive0   "  ?id "  avasAxI )" crlf))
)

(defrule depressive1
(declare (salience 4900))
(id-root ?id depressive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabAvapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depressive.clp 	depressive1   "  ?id "  xabAvapUrNa )" crlf))
)

;"depressive","Adj","1.xabAvapUrNa"
;The drug is quite depressive.
;--"2.hawowsAhaka"
;She was again in a depressive mood.
;
;
