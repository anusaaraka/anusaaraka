
(defrule upstate0
(declare (salience 5000))
(id-root ?id upstate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAjya_kA_vaha_BAga_jo_muKya_Sahara_se_xUra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upstate.clp 	upstate0   "  ?id "  rAjya_kA_vaha_BAga_jo_muKya_Sahara_se_xUra_ho )" crlf))
)

;"upstate","Adj","1.rAjya_kA_vaha_BAga_jo_muKya_Sahara_se_xUra_ho"
;They have set up a new plant in upstate Hyderabad.
;
(defrule upstate1
(declare (salience 4900))
(id-root ?id upstate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sahara_ke_xUra_kA_ilAkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upstate.clp 	upstate1   "  ?id "  Sahara_ke_xUra_kA_ilAkA )" crlf))
)

;"upstate","Adv","1.Sahara_ke_xUra_kA_ilAkA"
;He commutes upstate every day for relaxation.
;
