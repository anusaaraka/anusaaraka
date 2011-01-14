
(defrule premium0
(declare (salience 5000))
(id-root ?id premium)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXimUlya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  premium.clp 	premium0   "  ?id "  aXimUlya )" crlf))
)

;"premium","Adj","1.aXimUlya"
;Inspite of being offered a premium rent, he didn't gave his land on lease.
;
(defrule premium1
(declare (salience 4900))
(id-root ?id premium)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bImA-kiswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  premium.clp 	premium1   "  ?id "  bImA-kiswa )" crlf))
)

;"premium","N","1.bImA-kiswa"
;I pay a premium of Rs.500 every month for a life insurance policy.
;--"2.lABAMSa"
;
