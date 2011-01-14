
(defrule carol0
(declare (salience 5000))
(id-root ?id carol)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ananxa_kA_gIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carol.clp 	carol0   "  ?id "  Ananxa_kA_gIwa )" crlf))
)

;"carol","N","1.Ananxa_kA_gIwa"
;We sang Christmas carols on Christmas day.
;
(defrule carol1
(declare (salience 4900))
(id-root ?id carol)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSaMsAgAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carol.clp 	carol1   "  ?id "  praSaMsAgAna_kara )" crlf))
)

;"carol","V","1.praSaMsAgAna_karanA/AnanxagIwa_gAnA"
;They went caroling on Christmas Day.
;
