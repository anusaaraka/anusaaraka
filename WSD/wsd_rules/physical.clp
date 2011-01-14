
(defrule physical0
(declare (salience 5000))
(id-root ?id physical)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) characteristics)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BOwika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  physical.clp 	physical0   "  ?id "  BOwika )" crlf))
)

(defrule physical1
(declare (salience 4900))
(id-root ?id physical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BOwika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  physical.clp 	physical1   "  ?id "  BOwika )" crlf))
)

(defrule physical2
(declare (salience 4800))
(id-root ?id physical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SArIrika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  physical.clp 	physical2   "  ?id "  SArIrika )" crlf))
)

;"physical","Adj","1.SArIrika"
;Physical Education is must to every student.
;--"2.BOwika"
;It is a physical impossibility to be in two places at once.
;
;
