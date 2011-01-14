
(defrule irregular0
(declare (salience 5000))
(id-root ?id irregular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asAmAnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  irregular.clp 	irregular0   "  ?id "  asAmAnya )" crlf))
)

(defrule irregular1
(declare (salience 4900))
(id-root ?id irregular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  irregular.clp 	irregular1   "  ?id "  asama )" crlf))
)

;"irregular","Adj","1.asama"
;The girl has irregular teeth.
;--"2.aniyamiwa"
;Irregular students do not perform well.
;--"3.avyavasWiwa"
;There are irregular verbs in grammar.
;--"4.saSaswra_senA_se_asaMbaxXa"
;The irregular troops are taking part in the parade.
;
;
