
(defrule wrought0
(declare (salience 5000))
(id-root ?id wrought)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA_banA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrought.clp 	wrought0   "  ?id "  kA_banA_huA )" crlf))
)

;"wrought","Adj","1.kA_banA_huA"
;The museum has elaborately wrought carvings && inlays in bronze.
;
(defrule wrought1
(declare (salience 4900))
(id-root ?id wrought)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrought.clp 	wrought1   "  ?id "  lA )" crlf))
)

;"wrought","V","1.lAnA"
;The cyclone wrought large scale destruction on the eastern coast.
;
