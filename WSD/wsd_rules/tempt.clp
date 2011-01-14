
(defrule tempt0
(declare (salience 5000))
(id-root ?id tempt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tempting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praloBaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tempt.clp  	tempt0   "  ?id "  praloBaka )" crlf))
)

;"tempting","Adj","1.praloBaka"
;It is a tempting offer given by the company.
;
(defrule tempt1
(declare (salience 4900))
(id-root ?id tempt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id luBA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tempt.clp 	tempt1   "  ?id "  luBA )" crlf))
)

;"tempt","VT","1.luBAnA"
;King Harishchandra was not tempted by the riches.
;
;