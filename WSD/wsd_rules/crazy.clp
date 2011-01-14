
(defrule crazy0
(declare (salience 5000))
(id-root ?id crazy)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAgala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crazy.clp 	crazy0   "  ?id "  pAgala )" crlf))
)

(defrule crazy1
(declare (salience 4900))
(id-root ?id crazy)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAgala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crazy.clp 	crazy1   "  ?id "  pAgala )" crlf))
)

;"crazy","Adj","1.pAgala"
;She was crazy about him.
;He had a crazy dream
;--"2.unmawwa"
;The crowd went crazy
;--"3.awi_uwsAhI"
;She is crazy about cars && racing
;
;
