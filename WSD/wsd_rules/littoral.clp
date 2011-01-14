
(defrule littoral0
(declare (salience 5000))
(id-root ?id littoral)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id watIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  littoral.clp 	littoral0   "  ?id "  watIya )" crlf))
)

;"littoral","Adj","1.watIya"
(defrule littoral1
(declare (salience 4900))
(id-root ?id littoral)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  littoral.clp 	littoral1   "  ?id "  wata )" crlf))
)

;"littoral","N","1.wata"
