
(defrule relapse0
(declare (salience 5000))
(id-root ?id relapse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrvAvasWA_prApwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relapse.clp 	relapse0   "  ?id "  pUrvAvasWA_prApwi )" crlf))
)

;"relapse","N","1.pUrvAvasWA_prApwi"
;The child had a relapse of typhoid.
;
(defrule relapse1
(declare (salience 4900))
(id-root ?id relapse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_Ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relapse.clp 	relapse1   "  ?id "  Pira_Ko )" crlf))
)

;"relapse","V","1.Pira_Ko"
(defrule relapse2
(declare (salience 4800))
(id-root ?id relapse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_kaRta_mez_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relapse.clp 	relapse2   "  ?id "  Pira_kaRta_mez_padZa )" crlf))
)

;"relapse","VI","1.Pira_kaRta_mez_padZanA"
;He relapsed into bad habits.
;
