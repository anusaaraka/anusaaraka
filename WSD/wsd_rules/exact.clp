
(defrule exact0
(declare (salience 5000))
(id-root ?id exact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exact.clp 	exact0   "  ?id "  TIka )" crlf))
)

;"exact","Adj","1.TIka"
;Give exact figures.
;--"2.SuxXa"
;--"3.nirxoRa"
;--"4.yaWArWa/samuciwa"
;An exact mind
(defrule exact1
(declare (salience 4900))
(id-root ?id exact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balapUrvaka_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exact.clp 	exact1   "  ?id "  balapUrvaka_le )" crlf))
)

;"exact","VT","1.balapUrvaka_lenA"
