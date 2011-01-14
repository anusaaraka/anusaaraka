
(defrule fragile0
(declare (salience 5000))
(id-root ?id fragile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamajZora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fragile.clp 	fragile0   "  ?id "  kamajZora )" crlf))
)

(defrule fragile1
(declare (salience 4900))
(id-root ?id fragile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BaMgura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fragile.clp 	fragile1   "  ?id "  BaMgura )" crlf))
)

;"fragile","Adj","1.BaMgura"
;Dishes made of bone china are fragile.
;--"2.nAjZuka
;She looks very fragile.
;
;
