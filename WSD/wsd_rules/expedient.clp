
(defrule expedient0
(declare (salience 5000))
(id-root ?id expedient)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expedient.clp 	expedient0   "  ?id "  yogya )" crlf))
)

;"expedient","Adj","1.yogya"
;His action is seen as expedient rather than principled.
;
(defrule expedient1
(declare (salience 4900))
(id-root ?id expedient)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expedient.clp 	expedient1   "  ?id "  upAya )" crlf))
)

;"expedient","N","1.upAya"
;In some circumstances it is expedient to express loyalty
;
