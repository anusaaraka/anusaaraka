
(defrule snarl0
(declare (salience 5000))
(id-root ?id snarl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulaJana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snarl.clp 	snarl0   "  ?id "  ulaJana )" crlf))
)

;"snarl","N","1.ulaJana/gurrAhata"
(defrule snarl1
(declare (salience 4900))
(id-root ?id snarl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulaJA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snarl.clp 	snarl1   "  ?id "  ulaJA_xe )" crlf))
)

;"snarl","V","1.ulaJA_xenA/gurrAnA"
