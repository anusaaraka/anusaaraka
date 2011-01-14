
(defrule capitalist0
(declare (salience 5000))
(id-root ?id capitalist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUzjIvAxa_para_AXAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  capitalist.clp 	capitalist0   "  ?id "  pUzjIvAxa_para_AXAriwa )" crlf))
)

;"capitalist","Adj","1.pUzjIvAxa_para_AXAriwa"
;USA is a capitalist country.
;
(defrule capitalist1
(declare (salience 4900))
(id-root ?id capitalist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUzjIpawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  capitalist.clp 	capitalist1   "  ?id "  pUzjIpawi )" crlf))
)

;"capitalist","N","1.pUzjIpawi"
;A capitalist is a rich man.
;
