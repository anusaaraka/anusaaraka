
(defrule herald0
(declare (salience 5000))
(id-root ?id herald)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id agraxUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  herald.clp 	herald0   "  ?id "  agraxUwa )" crlf))
)

;"herald","N","1.agraxUwa"
;neSanala'herald'samAcAra pawra svawraMwawA saMgrAma ke samaya(agraxUwa)kA kAma karawA WA.
;
(defrule herald1
(declare (salience 4900))
(id-root ?id herald)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ane_kI_sUcanA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  herald.clp 	herald1   "  ?id "  Ane_kI_sUcanA_xe )" crlf))
)

;"herald","V","1.Ane_kI_sUcanA_xenA"
;saBA meM newAjI ke Ane kI'herald' xI.
;
