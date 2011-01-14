
(defrule zone0
(declare (salience 5000))
(id-root ?id zone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  zone.clp 	zone0   "  ?id "  kRewra )" crlf))
)

;"zone","N","1.kRewra/maNdala"
;Madhya Pradesh comes in the central zone.
;
(defrule zone1
(declare (salience 4900))
(id-root ?id zone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewroM_meM_viBAjiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  zone.clp 	zone1   "  ?id "  kRewroM_meM_viBAjiwa_kara )" crlf))
)

;"zone","V","1.kRewroM_meM_viBAjiwa_karanA"
;The land was zoned for industrial purposes.
;
