
(defrule augur0
(declare (salience 5000))
(id-root ?id augur)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BaviRya_bawAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  augur.clp 	augur0   "  ?id "  BaviRya_bawAne_vAlA )" crlf))
)

;"augur","N","1.BaviRya_bawAne_vAlA"
; He believes in the predictions made by the augur.
;
(defrule augur1
(declare (salience 4900))
(id-root ?id augur)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Agama_kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  augur.clp 	augur1   "  ?id "  Agama_kaha )" crlf))
)

;"augur","VTI","1.Agama_kahanA"
;The figures augur a massive defeat for the government.
;
