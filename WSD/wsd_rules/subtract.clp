
(defrule subtract0
(declare (salience 5000))
(id-root ?id subtract)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  subtract.clp 	subtract0   "  ?id "  GatA )" crlf))
)

