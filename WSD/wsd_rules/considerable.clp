
(defrule considerable0
(declare (salience 5000))
(id-root ?id considerable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pracura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  considerable.clp 	considerable0   "  ?id "  pracura )" crlf))
)

(defrule considerable1
(declare (salience 4900))
(id-root ?id considerable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  considerable.clp 	considerable1   "  ?id "  bahuwa_aXika )" crlf))
)

;"considerable","Adj","1.bahuwa_aXika"
;A considerable quantity of manpower is required to do this work.
;
;
