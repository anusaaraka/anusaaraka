
(defrule station0
(declare (salience 5000))
(id-root ?id station)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id steSana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  station.clp 	station0   "  ?id "  steSana )" crlf))
)

;"station","N","1.steSana"
;Ambala is the next station.
;--"2.kenxra"
;NDTV is the best TV station as per my views.
;
(defrule station1
(declare (salience 4900))
(id-root ?id station)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEnAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  station.clp 	station1   "  ?id "  wEnAwa_kara )" crlf))
)

;"station","V","1.wEnAwa_kara"
;--"2.sWiwa_honA"
;My brother's regiment is stationed at Manali.
;
