
(defrule honk0
(declare (salience 5000))
(id-root ?id honk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haMsa_ke_kAzva_kAzva_karane_kI_AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  honk.clp 	honk0   "  ?id "  haMsa_ke_kAzva_kAzva_karane_kI_AvAja )" crlf))
)

;"honk","N","1.haMsa_ke_kAzva_kAzva_karane_kI_AvAja"
;AsamAna meM 'honk'(haMsa ke kAzva kAzva karane kI AvAja sunAI xe rahI WI.
;
(defrule honk1
(declare (salience 4900))
(id-root ?id honk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BOMpU_bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  honk.clp 	honk1   "  ?id "  BOMpU_bajA )" crlf))
)

;"honk","V","1.BOMpU_bajAnA"
;purAnI motaroM meM'honk'(BoMpU bajA kara AvAja kI jAwI WI.)
;
