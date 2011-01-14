
(defrule overlay0
(declare (salience 5000))
(id-root ?id overlay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UparI_waha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overlay.clp 	overlay0   "  ?id "  UparI_waha )" crlf))
)

;"overlay","N","1.UparI_waha"
;The goldsmith gave an overlay of gold over the silver vessel.
;
(defrule overlay1
(declare (salience 4900))
(id-root ?id overlay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_ke_Upara_eka_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overlay.clp 	overlay1   "  ?id "  eka_ke_Upara_eka_raKa )" crlf))
)

;"overlay","VT","1.eka_ke_Upara_eka_raKanA"
;This is a wooden door overlaid with ivory
;
