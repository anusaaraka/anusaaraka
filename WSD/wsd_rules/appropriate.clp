
(defrule appropriate0
(declare (salience 5000))
(id-root ?id appropriate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appropriate.clp 	appropriate0   "  ?id "  uciwa )" crlf))
)

;"appropriate","Adj","1.uciwa"
;The alliance will be declared at an appropriate time.
;
(defrule appropriate1
(declare (salience 4900))
(id-root ?id appropriate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuciwa_rUpa_se_apanA_banA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appropriate.clp 	appropriate1   "  ?id "  anuciwa_rUpa_se_apanA_banA_le )" crlf))
)

;"appropriate","VT","1.anuciwa_rUpa_se_apanA_banA_lenA"
;It is alleged that Mr. Kumar appropriated the Institute Funds.
;--"2.alaga_raKanA"
;Rs.20000/- have been appropriated for the Conference.
;
