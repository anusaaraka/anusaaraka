(defrule programming0
(declare (salience 4000))
(id-root ?id programming)
?mng <-(meaning_to_be_decided ?id)
=>
	(retract ?mng)
	(assert (id-wsd_root_mng ?id progrAming))
	(if ?*debug_flag* then
	(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  programming.clp    programming0   "  ?id " progrAming )" crlf))
)
	
