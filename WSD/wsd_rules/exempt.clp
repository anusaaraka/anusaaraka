
(defrule exempt0
(declare (salience 5000))
(id-root ?id exempt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exempt.clp 	exempt0   "  ?id "  Bukwa )" crlf))
)

;"exempt","Adj","1.Bukwa"
;He is exempt from military service.
;
(defrule exempt1
(declare (salience 4900))
(id-root ?id exempt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exempt.clp 	exempt1   "  ?id "  mukwa_kara )" crlf))
)

;"exempt","VT","1.mukwa_karanA"
;The accused was exempted from all charges.
;
