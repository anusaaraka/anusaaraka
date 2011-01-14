
(defrule airlift0
(declare (salience 5000))
(id-root ?id airlift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id havAI_jahAja_xvArA_maxaxa_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  airlift.clp 	airlift0   "  ?id "  havAI_jahAja_xvArA_maxaxa_karanA )" crlf))
)

;"airlift","N","1.havAI_jahAja_xvArA_maxaxa_karanA"
;There was an airlift of essential commodities to the flood-stricken area.
;
(defrule airlift1
(declare (salience 4900))
(id-root ?id airlift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id havAI_jahAja_xvArA_logo_yA_sAmAnoM_ko_lAnA-lejA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  airlift.clp 	airlift1   "  ?id "  havAI_jahAja_xvArA_logo_yA_sAmAnoM_ko_lAnA-lejA )" crlf))
)

;"airlift","V","1.havAI_jahAja_xvArA_logo_yA_sAmAnoM_ko_lAnA-lejAnA"
;The flood victims were airlifted to a safer place.
;
