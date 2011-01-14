
(defrule worth0
(declare (salience 5000))
(id-root ?id worth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worth.clp 	worth0   "  ?id "  mUlya )" crlf))
)

;"worth","Adj","1.mUlya"
;It is worth buying the anklet for the price.
;
(defrule worth1
(declare (salience 4900))
(id-root ?id worth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worth.clp 	worth1   "  ?id "  mUlya )" crlf))
)

;"worth","N","1.mUlya"
;
