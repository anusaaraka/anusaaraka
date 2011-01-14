
(defrule characterstic0
(declare (salience 5000))
(id-root ?id characterstic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id A)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAriwrika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  characterstic.clp 	characterstic0   "  ?id "  cAriwrika )" crlf))
)

;"characterstic","A","1.cAriwrika"
(defrule characterstic1
(declare (salience 4900))
(id-root ?id characterstic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAriwrika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  characterstic.clp 	characterstic1   "  ?id "  cAriwrika )" crlf))
)

;"characterstic","Adj","1.cAriwrika"
(defrule characterstic2
(declare (salience 4800))
(id-root ?id characterstic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSeRa_guNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  characterstic.clp 	characterstic2   "  ?id "  viSeRa_guNa )" crlf))
)

;"characterstic","N","1.viSeRa_guNa"
