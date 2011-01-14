
(defrule locomotive0
(declare (salience 5000))
(id-root ?id locomotive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMcalanaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  locomotive.clp 	locomotive0   "  ?id "  saMcalanaSIla )" crlf))
)

;"locomotive","Adj","1.saMcalanaSIla"
;Locomotive force.
;
(defrule locomotive1
(declare (salience 4900))
(id-root ?id locomotive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMjana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  locomotive.clp 	locomotive1   "  ?id "  iMjana )" crlf))
)

;"locomotive","N","1.iMjana"
;Trains need locomotive power to run.
;
