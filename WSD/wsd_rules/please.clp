
(defrule please0
(declare (salience 5000))
(id-root ?id please)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqpayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  please.clp 	please0   "  ?id "  kqpayA )" crlf))
)

(defrule please1
(declare (salience 4900))
(id-root ?id please)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqpayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  please.clp 	please1   "  ?id "  kqpayA )" crlf))
)

(defrule please2
(declare (salience 4800))
(id-root ?id please)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasanna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  please.clp 	please2   "  ?id "  prasanna )" crlf))
)

;Added by Aditya and Hardik(20-06-2013),IIT(BHU) batch 2012-2017.
;can you call again later please.
(defrule please3
(declare (salience 4850))
(id-last_word ?id please)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqpayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  please.clp 	please3   "  ?id "  kqpayA )" crlf))
)
