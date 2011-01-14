
(defrule humanoid0
(declare (salience 5000))
(id-root ?id humanoid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sakla_meM_mAnava_jEsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  humanoid.clp 	humanoid0   "  ?id "  Sakla_meM_mAnava_jEsA )" crlf))
)

;"humanoid","Adj","1.Sakla_meM_mAnava_jEsA"
;gurillA xeKane meM 'humanoid' hE.
;
(defrule humanoid1
(declare (salience 4900))
(id-root ?id humanoid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnava_jEsA_prANI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  humanoid.clp 	humanoid1   "  ?id "  mAnava_jEsA_prANI )" crlf))
)

;"humanoid","N","1.mAnava_jEsA_prANI"
;purAwawvajFa 'humanoid' kI Koja karawe hEM.
;
