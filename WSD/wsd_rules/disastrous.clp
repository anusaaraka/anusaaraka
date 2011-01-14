
(defrule disastrous0
(declare (salience 5000))
(id-root ?id disastrous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gora_vinASakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disastrous.clp 	disastrous0   "  ?id "  Gora_vinASakArI )" crlf))
)

(defrule disastrous1
(declare (salience 4900))
(id-root ?id disastrous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurGatanApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disastrous.clp 	disastrous1   "  ?id "  xurGatanApUrNa )" crlf))
)

;"disastrous","Adj","1.xurGatanApUrNa"
;A disastrous cyclonic storm hit the Orissa coast.
;
;
