
(defrule stray0
(declare (salience 5000))
(id-root ?id stray)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cutaputa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stray.clp 	stray0   "  ?id "  Cutaputa )" crlf))
)

;"stray","Adj","1.Cutaputa"
;Stray incidents of vioulance marked the celebrations.
;
(defrule stray1
(declare (salience 4900))
(id-root ?id stray)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bataka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stray.clp 	stray1   "  ?id "  Bataka_jA )" crlf))
)

;"stray","V","1.Bataka_jAnA"
;Bad company strayed him from the path of honesty.
;
