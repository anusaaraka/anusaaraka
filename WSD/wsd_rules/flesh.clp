
(defrule flesh0
(declare (salience 5000))
(id-root ?id flesh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAMsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flesh.clp 	flesh0   "  ?id "  mAMsa )" crlf))
)

(defrule flesh1
(declare (salience 4900))
(id-root ?id flesh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viswAra_meM_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flesh.clp 	flesh1   "  ?id "  viswAra_meM_jA )" crlf))
)

;"flesh","V","1.viswAra meM jAnA"
;His thesis needs more fleshing out before he can submit the same to the university.
;
;