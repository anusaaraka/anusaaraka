
(defrule worn0
(declare (salience 5000))
(id-root ?id worn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GisA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worn.clp 	worn0   "  ?id "  GisA_huA )" crlf))
)

(defrule worn1
(declare (salience 4900))
(id-root ?id worn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GisA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worn.clp 	worn1   "  ?id "  GisA_huA )" crlf))
)

;"worn","Adj","1.GisA_huA"
;His shoes are worn.
;--"2.WakA_huA"
;She looks worn after the day's work.
;
;
