
(defrule adult0
(declare (salience 5000))
(id-root ?id adult)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vayaska))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adult.clp 	adult0   "  ?id "  vayaska )" crlf))
)

;"adult","Adj","1.vayaska"
;Children are not allowed to see adult movies.
;
(defrule adult1
(declare (salience 4900))
(id-root ?id adult)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAliga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adult.clp 	adult1   "  ?id "  bAliga )" crlf))
)

;"adult","N","1.bAliga"
;Adults too like children's movies.
;
