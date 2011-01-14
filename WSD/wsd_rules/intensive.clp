
(defrule intensive0
(declare (salience 5000))
(id-root ?id intensive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saGana_saMrakRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intensive.clp 	intensive0   "  ?id "  saGana_saMrakRaNa )" crlf))
)

(defrule intensive1
(declare (salience 4900))
(id-root ?id intensive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXikara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intensive.clp 	intensive1   "  ?id "  vqxXikara )" crlf))
)

;"intensive","Adj","1.vqxXikara"
;Intensive methods are implemented in the field of agriculture.
;--"2.wIvra"
;An intensive search helped him to regain his possessions.
;
;
