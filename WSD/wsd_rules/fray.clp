
(defrule fray0
(declare (salience 5000))
(id-root ?id fray)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawisparXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fray.clp 	fray0   "  ?id "  prawisparXA )" crlf))
)

;"fray","N","1.prawisparXA"
;Students are eager for the fray.
;
(defrule fray1
(declare (salience 4900))
(id-root ?id fray)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fray.clp 	fray1   "  ?id "  Waka )" crlf))
)

;"fray","VT","1.WakanA"
;Our tempers began to fray in the heat.
;
