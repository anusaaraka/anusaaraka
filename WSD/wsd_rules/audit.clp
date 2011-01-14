
(defrule audit0
(declare (salience 5000))
(id-root ?id audit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id leKA_parIkRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  audit.clp 	audit0   "  ?id "  leKA_parIkRaNa )" crlf))
)

;"audit","N","1.leKA_parIkRaNa"
;The auditors are coming for the company's audit.
;
(defrule audit1
(declare (salience 4900))
(id-root ?id audit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id leKA_jAzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  audit.clp 	audit1   "  ?id "  leKA_jAzca )" crlf))
)

;"audit","VT","1.leKA_jAzcanA"
;The auditors audited all the accounts.
;
