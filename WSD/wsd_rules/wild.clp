
(defrule wild0
(declare (salience 5000))
(id-root ?id wild)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaMgalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wild.clp 	wild0   "  ?id "  jaMgalI )" crlf))
)

;"wild","Adj","1.jaMgalI"
;These flowers are wild.
;
(defrule wild1
(declare (salience 4900))
(id-root ?id wild)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaMgala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wild.clp 	wild1   "  ?id "  jaMgala )" crlf))
)

;"wild","N","1.jaMgala"
;The solitary reaper walked in the wild.
;
