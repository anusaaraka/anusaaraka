
(defrule solder0
(declare (salience 5000))
(id-root ?id solder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tAzkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solder.clp 	solder0   "  ?id "  tAzkA )" crlf))
)

;"solder","N","1.tAzkA/rAzga"
;Two wires are connected to a coil with the solder.
;
(defrule solder1
(declare (salience 4900))
(id-root ?id solder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tAzkA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solder.clp 	solder1   "  ?id "  tAzkA_lagA )" crlf))
)

;"solder","V","1.tAzkA_lagAnA"
;He soldered the loose wire.
;
