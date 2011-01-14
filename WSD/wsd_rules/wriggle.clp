
(defrule wriggle0
(declare (salience 5000))
(id-root ?id wriggle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parisarpaNa_gawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wriggle.clp 	wriggle0   "  ?id "  parisarpaNa_gawi )" crlf))
)

;"wriggle","N","1.parisarpaNa_gawi"
;The wriggle of the snake was aweful.
;
(defrule wriggle1
(declare (salience 4900))
(id-root ?id wriggle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kulabulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wriggle.clp 	wriggle1   "  ?id "  kulabulA )" crlf))
)

;"wriggle","VTI","1.kulabulAnA"
;The baby was wriggling in her arms.
;--"2.teDe_meDe_calanA"
;The cyclist wriggled along the path.
;
