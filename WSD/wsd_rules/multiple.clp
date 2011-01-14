
(defrule multiple0
(declare (salience 5000))
(id-root ?id multiple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahu-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  multiple.clp 	multiple0   "  ?id "  bahu- )" crlf))
)

(defrule multiple1
(declare (salience 4900))
(id-root ?id multiple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  multiple.clp 	multiple1   "  ?id "  bahuwa )" crlf))
)

;"multiple","Adj","1.bahuwa"
;The examiner has given multiple type of questions.
;
;