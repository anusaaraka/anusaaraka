
(defrule apt0
(declare (salience 5000))
(id-root ?id apt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  apt.clp 	apt0   "  ?id "  uciwa )" crlf))
)

(defrule apt1
(declare (salience 4900))
(id-root ?id apt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  apt.clp 	apt1   "  ?id "  upayukwa )" crlf))
)

;"apt","Adj","1.upayukwa"
;'Shall I call thee Bird or but a wandering voice?'
;Here Wordsworth's use of metopher is very apt.
;--"2.pravaNa"
;Sharp students are always very apt at learning quickly.
;
;
