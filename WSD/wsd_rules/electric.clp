
(defrule electric0
(declare (salience 5000))
(id-root ?id electric)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixyuwa-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  electric.clp 	electric0   "  ?id "  vixyuwa- )" crlf))
)

(defrule electric1
(declare (salience 4900))
(id-root ?id electric)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bijalI_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  electric.clp 	electric1   "  ?id "  bijalI_kA )" crlf))
)

;"electric","Adj","1.bijalI_kA"
;I am using electric water-heater.
;
;