
(defrule unwise0
(declare (salience 5000))
(id-root ?id unwise)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ajFAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unwise.clp 	unwise0   "  ?id "  ajFAna )" crlf))
)

(defrule unwise1
(declare (salience 4900))
(id-root ?id unwise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ajFAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unwise.clp 	unwise1   "  ?id "  ajFAnI )" crlf))
)

;"unwise","Adj","1.ajFAnI/nirboXa/mUrKa"
;An unwise investor is soon impoverished
;
;
