
(defrule table0
(declare (salience 5000))
(id-root ?id table)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mejZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  table.clp 	table0   "  ?id "  mejZa )" crlf))
)

;"table","N","1.mejZa"
;--"2.meja"
;Don't spread things on the table .
;--"3.sUcI"
;You can see the table && check the prices.
;--"4.prawiyogiwA_meM_KilAdiyo_kA_sWAna"
;He will go to the top of the league table,if he wins.
;--"5.pahAdA"
;Learn the three times table.
;
(defrule table1
(declare (salience 4900))
(id-root ?id table)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswAviwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  table.clp 	table1   "  ?id "  praswAviwa_kara )" crlf))
)

;"table","VT","1.praswAviwa_karanA"
;The minister will table the bill in the parliament on Monday.
;
