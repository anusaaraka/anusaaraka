
(defrule privilege0
(declare (salience 5000))
(id-root ?id privilege)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id privileged )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id viSeRAXikqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  privilege.clp  	privilege0   "  ?id "  viSeRAXikqwa )" crlf))
)

;"privileged","Adj","1.viSeRAXikqwa"
;Coming from a privileged background, she became the club president.
;
(defrule privilege1
(declare (salience 4900))
(id-root ?id privilege)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  privilege.clp 	privilege1   "  ?id "  prAXikAra )" crlf))
)

;"privilege","N","1.prAXikAra"
;Officers on special duties are given special privileges.
;
;