
(defrule wad0
(declare (salience 5000))
(id-root ?id wad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaxxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wad.clp 	wad0   "  ?id "  gaxxI )" crlf))
)

;"wad","N","1.gaxxI"
;Sit on the wad
;
(defrule wad1
(declare (salience 4900))
(id-root ?id wad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAta_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wad.clp 	wad1   "  ?id "  dAta_banA )" crlf))
)

;"wad","VT","1.dAta_banAnA"
;He waded his coat
;
