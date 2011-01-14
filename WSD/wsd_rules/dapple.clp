
(defrule dapple0
(declare (salience 5000))
(id-root ?id dapple)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dappled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ciwakabarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dapple.clp  	dapple0   "  ?id "  ciwakabarA )" crlf))
)

;"dappled","Adj","1.ciwakabarA/raMgabiraMgA"
;We saw a herd of dappled deer in the deer sanctuary.
;
(defrule dapple1
(declare (salience 4900))
(id-root ?id dapple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciwakabarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dapple.clp 	dapple1   "  ?id "  ciwakabarA )" crlf))
)

;"dapple","Adj","1.ciwakabarA/raMgabiraMgA"
;
;
