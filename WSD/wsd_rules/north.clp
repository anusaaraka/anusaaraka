
(defrule north0
(declare (salience 5000))
(id-root ?id north)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  north.clp 	north0   "  ?id "  uwwarI )" crlf))
)

;"north","Adj","1.uwwarI"
;He is staying in North London.
;
(defrule north1
(declare (salience 4900))
(id-root ?id north)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  north.clp 	north1   "  ?id "  uwwara )" crlf))
)

;"north","N","1.uwwara"
;Winter is severe in the north.
;
