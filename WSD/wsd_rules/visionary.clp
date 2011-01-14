
(defrule visionary0
(declare (salience 5000))
(id-root ?id visionary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalpiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  visionary.clp 	visionary0   "  ?id "  kalpiwa )" crlf))
)

;"visionary","Adj","1.kalpiwa"
;Bill Gates has the visionary insights in the field of technology
;
(defrule visionary1
(declare (salience 4900))
(id-root ?id visionary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KZayAlI_pulAva_pakAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  visionary.clp 	visionary1   "  ?id "  KZayAlI_pulAva_pakAne_vAlA )" crlf))
)

;"visionary","N","1.KZayAlI_pulAva_pakAne_vAlA"
;Abraham Lincon was a visionary
;
