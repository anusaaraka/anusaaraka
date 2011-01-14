
(defrule unique0
(declare (salience 5000))
(id-root ?id unique)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unique.clp 	unique0   "  ?id "  eka )" crlf))
)

(defrule unique1
(declare (salience 4900))
(id-root ?id unique)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anupama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unique.clp 	unique1   "  ?id "  anupama )" crlf))
)

;"unique","Adj","1.anupama/apUrva"
;  She speaks Hindi with a unique with a unique accent.
;
;
