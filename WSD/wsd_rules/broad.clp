
(defrule broad0
(declare (salience 5000))
(id-root ?id broad)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viswqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broad.clp 	broad0   "  ?id "  viswqwa )" crlf))
)

(defrule broad1
(declare (salience 4900))
(id-root ?id broad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broad.clp 	broad1   "  ?id "  cOdZA )" crlf))
)

(defrule broad2
(declare (salience 4800))
(id-root ?id broad)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viswqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broad.clp 	broad2   "  ?id "  viswqwa )" crlf))
)

;"broad","Adj","1.viswqwa"
;A broad rule
;A broad lawn
;--"2.spaRta"
;Gave us a broad hint that it was time to leave
;A broad southern accent
;A broad political stance
;
;
