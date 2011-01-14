
(defrule shred0
(declare (salience 5000))
(id-root ?id shred)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA_tukadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shred.clp 	shred0   "  ?id "  CotA_tukadZA )" crlf))
)

;"shred","N","1.CotA_tukadZA"
;He tore the paper into shreds.
;--"2.leSamAwra"
;There is not a shred of evidence to support what he says.
;
(defrule shred1
(declare (salience 4900))
(id-root ?id shred)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cote_tukadZoM_meM_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shred.clp 	shred1   "  ?id "  Cote_tukadZoM_meM_kAta )" crlf))
)

;"shred","V","1.Cote_tukadZoM_meM_kAtanA"
;The servant has to shred the cabbage.
;
