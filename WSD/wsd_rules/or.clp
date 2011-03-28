;Added by Meena(28-03-11)
;Madras, or Chennai as it is now called, is known as the gateway of southern india. 
(defrule or0
(declare (salience 5000))
(id-root ?id or)
?mng <-(meaning_to_be_decided ?id)
(wall_conjunction  ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " or.clp	 or0  "  ?id "  -  )" crlf))
)
