
(defrule covert0
(declare (salience 5000))
(id-root ?id covert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CipA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  covert.clp 	covert0   "  ?id "  CipA_huA )" crlf))
)

;"covert","Adj","1.CipA_huA/gupwa"
;The army should keep track of covert actions by the forign espionage agencies.
;
(defrule covert1
(declare (salience 4900))
(id-root ?id covert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAdZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  covert.clp 	covert1   "  ?id "  JAdZI )" crlf))
)

;"covert","N","1.JAdZI"
;The fox went into the covert.
;
