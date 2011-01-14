
(defrule objective0
(declare (salience 5000))
(id-root ?id objective)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  objective.clp 	objective0   "  ?id "  lakRya )" crlf))
)

(defrule objective1
(declare (salience 4900))
(id-root ?id objective)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viRayaniRTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  objective.clp 	objective1   "  ?id "  viRayaniRTa )" crlf))
)

;"objective","Adj","1.viRayaniRTa"
;Locke believed in the objeetive perception of reelity.
;--"2.niRpakRa"
;The objective report was not appreciated.
;
;