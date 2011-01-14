
(defrule lightweight0
(declare (salience 5000))
(id-root ?id lightweight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_BAra_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lightweight.clp 	lightweight0   "  ?id "  kama_BAra_kA )" crlf))
)

;"lightweight","Adj","1.kama_BAra_kA"
;Mountaineers carry lightweight equipment while climbing.
;
(defrule lightweight1
(declare (salience 4900))
(id-root ?id lightweight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAva_rahiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lightweight.clp 	lightweight1   "  ?id "  praBAva_rahiwa )" crlf))
)

;"lightweight","N","1.praBAva_rahiwa"
;He is a lightweight in politics.
;
