
(defrule surplus0
(declare (salience 5000))
(id-root ?id surplus)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awirikwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surplus.clp 	surplus0   "  ?id "  awirikwa )" crlf))
)

;"surplus","Adj","1.awirikwa"
;Farmers store the grains so that it should be surplus.
;
(defrule surplus1
(declare (salience 4900))
(id-root ?id surplus)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXiSeRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surplus.clp 	surplus1   "  ?id "  aXiSeRa )" crlf))
)

;"surplus","N","1.aXiSeRa/baDZawI"
;After flood help was givin from surplus area to affected areas.
;
