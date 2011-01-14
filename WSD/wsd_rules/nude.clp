
(defrule nude0
(declare (salience 5000))
(id-root ?id nude)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id naMgA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nude.clp 	nude0   "  ?id "  naMgA )" crlf))
)

;"nude","Adj","1.naMgA"
;He sketched a nude women.
;
(defrule nude1
(declare (salience 4900))
(id-root ?id nude)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nagna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nude.clp 	nude1   "  ?id "  nagna )" crlf))
)

;"nude","N","1.nagna"
;He was swimming in the nude.
;
