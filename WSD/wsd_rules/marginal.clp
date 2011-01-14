
(defrule marginal0
(declare (salience 5000))
(id-root ?id marginal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nyUnawama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  marginal.clp 	marginal0   "  ?id "  nyUnawama )" crlf))
)

(defrule marginal1
(declare (salience 4900))
(id-root ?id marginal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hASiye_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  marginal.clp 	marginal1   "  ?id "  hASiye_kA )" crlf))
)

;"marginal","Adj","1.hASiye kA"
;These are marginal points && can be discussed later.
;--"2.bahuwa kama"
;This will have a marginal effect on the country's economy.
;
;
