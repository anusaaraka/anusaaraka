
(defrule commission0
(declare (salience 5000))
(id-root ?id commission)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ayoga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  commission.clp 	commission0   "  ?id "  Ayoga )" crlf))
)

;"commission","N","1.Ayoga"
;The Srikrishna commission investigated the Bombay riot case.
;--"2.aXikAra"
;He has secured commission to design buildings for the government.
;--"3.xalAlI"
;
(defrule commission1
(declare (salience 4900))
(id-root ?id commission)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  commission.clp 	commission1   "  ?id "  aXikAra_xe )" crlf))
)

;"commission","VT","1.aXikAra_xenA/niyukwa_karanA"
;Vinoth Kumar has been commissioned as a pilot officer.
;
