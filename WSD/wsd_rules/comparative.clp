
(defrule comparative0
(declare (salience 5000))
(id-root ?id comparative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wulanAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  comparative.clp 	comparative0   "  ?id "  wulanAwmaka )" crlf))
)

(defrule comparative1
(declare (salience 4900))
(id-root ?id comparative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wulanAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  comparative.clp 	comparative1   "  ?id "  wulanAwmaka )" crlf))
)

;"comparative","Adj","1.wulanAwmaka"
;He is studying comparative literature.
;
;