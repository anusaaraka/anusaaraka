
(defrule rare0
(declare (salience 5000))
(id-root ?id rare)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurlaBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rare.clp 	rare0   "  ?id "  xurlaBa )" crlf))
)

(defrule rare1
(declare (salience 4900))
(id-root ?id rare)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurlaBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rare.clp 	rare1   "  ?id "  xurlaBa )" crlf))
)

;"rare","Adj","1.xurlaBa"
;He has a huge collection of rare books in his library. 
;
;
