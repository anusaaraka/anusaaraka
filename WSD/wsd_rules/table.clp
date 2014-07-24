;Added by Shirisha Manju Suggested by Chaitanya Sir (18-09-13)
;Other units retained for general use are given in Table 2.2.
;sAmAnya vyavahAra meM Ane vAle anya mAwraka sAraNI 2.2 meM xie gae hEM.
(defrule table_with_no
(declare (salience 5001))
(id-root ?id table)
?mng <-(meaning_to_be_decided ?id)
(or (viSeRya-saMKyA_viSeRaNa  ?id ?id1)(id-cat_coarse  =(+ ?id 1) number))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAraNI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  table.clp     table_with_no   "  ?id "  sAraNI )" crlf))
)


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

;@@@ Added by Prachi Rathore[25-2-14]
;Do you know your six times table?[oald]
;क्या आप छः का पहाडा जानते हैं? 
(defrule table2
(declare (salience 5050))
(id-root ?id table)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-saMKyA_viSeRaNa  ?id ?id1)
(id-root ?id1 time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahAdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  table.clp 	table2   "  ?id "  pahAdA )" crlf))
)


;@@@ Added by Prachi Rathore[25-2-14]
;The rounded numbers are listed in the table.
;पूर्णांकित अंक  तालिका में सूचीबद्ध किए गये हैं .
(defrule table3
(declare (salience 5050))
(id-root ?id table)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAlikA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  table.clp 	table3   "  ?id "  wAlikA)" crlf))
)
