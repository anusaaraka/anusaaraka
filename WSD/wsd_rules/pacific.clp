
(defrule pacific0
(declare (salience 5000))
(id-root ?id pacific)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSAnwa-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pacific.clp 	pacific0   "  ?id "  praSAnwa- )" crlf))
)

(defrule pacific1
(declare (salience 4900))
(id-root ?id pacific)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pacific.clp 	pacific1   "  ?id "  sWira )" crlf))
)

;"pacific","Adj","1.sWira"
;To give our problems a solution we should be pacific.
;
;
