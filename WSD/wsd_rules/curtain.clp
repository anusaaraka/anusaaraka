
(defrule curtain0
(declare (salience 5000))
(id-root ?id curtain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  curtain.clp 	curtain0   "  ?id "  parxA )" crlf))
)

;"curtain","N","1.parxA"
;My daughters brought beautiful curtains for our house
;
(defrule curtain1
(declare (salience 4900))
(id-root ?id curtain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parxA_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  curtain.clp 	curtain1   "  ?id "  parxA_dAla )" crlf))
)

;"curtain","VT","1.parxA_dAlanA"
;Put the curtains on the rings
;
