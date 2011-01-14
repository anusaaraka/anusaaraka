
(defrule silt0
(declare (salience 5000))
(id-root ?id silt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  silt.clp 	silt0   "  ?id "  gAxa )" crlf))
)

(defrule silt1
(declare (salience 4900))
(id-root ?id silt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mittI_yA_rewa_se_rAswA_banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  silt.clp 	silt1   "  ?id "  mittI_yA_rewa_se_rAswA_banxa_kara )" crlf))
)

;"silt","V","1.mittI yA rewa se rAswA banxa karanA/rega se BaranA"
;Alluminium has silted up the river Ganga forming sunderkan delta.
;
;