
(defrule racial0
(declare (salience 5000))
(id-root ?id racial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prajAwIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  racial.clp 	racial0   "  ?id "  prajAwIya )" crlf))
)

(defrule racial1
(declare (salience 4900))
(id-root ?id racial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prajAwIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  racial.clp 	racial1   "  ?id "  prajAwIya )" crlf))
)

;"racial","Adj","1.prajAwIya"
;The fight will never end for racial equality.
;
;
