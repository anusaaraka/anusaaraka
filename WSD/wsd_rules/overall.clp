
(defrule overall0
(declare (salience 5000))
(id-root ?id overall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sampUrNawayaH))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overall.clp 	overall0   "  ?id "  sampUrNawayaH )" crlf))
)

;"overall","Adj","1.sampUrNawayaH"
;--"2.sampUrNawaH"
;The computer industry shows an overall growth.
;
(defrule overall1
(declare (salience 4900))
(id-root ?id overall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAvaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overall.clp 	overall1   "  ?id "  prAvaraNa )" crlf))
)

;"overall","N","1.prAvaraNa/perabanxa"
;The doctor was wearing a white overall.
;
