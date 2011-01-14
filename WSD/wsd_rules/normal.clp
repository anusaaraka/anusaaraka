
(defrule normal0
(declare (salience 5000))
(id-root ?id normal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  normal.clp 	normal0   "  ?id "  sAmAnya )" crlf))
)

;"normal","Adj","1.sAmAnya"
;Serve wine at normal room temperature.
;--"2.prakqwa"
;He is  a perfectly normal child.
;
(defrule normal1
(declare (salience 4900))
(id-root ?id normal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  normal.clp 	normal1   "  ?id "  - )" crlf)))

;"normal","N","1."
;Things have returned to normal after the curfew.
;
