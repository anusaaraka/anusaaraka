
(defrule smart0
(declare (salience 5000))
(id-root ?id smart)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 act)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cawurAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smart.clp 	smart0   "  ?id "  cawurAI )" crlf))
)

; He could not dare to act smart
(defrule smart1
(declare (salience 4900))
(id-root ?id smart)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smart.clp 	smart1   "  ?id "  cuswa )" crlf))
)

(defrule smart2
(declare (salience 4800))
(id-root ?id smart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smart.clp 	smart2   "  ?id "  cuswa )" crlf))
)

(defrule smart3
(declare (salience 4700))
(id-root ?id smart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tIsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smart.clp 	smart3   "  ?id "  tIsa )" crlf))
)

;"smart","V","1.tIsanA"
;Young lovers smart with pangs of separation which more often than not becomes unbearable.
;
;
