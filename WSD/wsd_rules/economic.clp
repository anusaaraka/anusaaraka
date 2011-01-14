
(defrule economic0
(declare (salience 5000))
(id-root ?id economic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id arWaSAswrIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  economic.clp 	economic0   "  ?id "  arWaSAswrIya )" crlf))
)

(defrule economic1
(declare (salience 4900))
(id-root ?id economic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id arWaSAswrIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  economic.clp 	economic1   "  ?id "  arWaSAswrIya )" crlf))
)

;"economic","Adj","1.arWaSAswrIya"
;The economic policies of the government have undergone a major change.
;
;
