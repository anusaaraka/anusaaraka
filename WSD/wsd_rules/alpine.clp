
(defrule alpine0
(declare (salience 5000))
(id-root ?id alpine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yUropa_kA_parvawIya_kRewra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alpine.clp 	alpine0   "  ?id "  yUropa_kA_parvawIya_kRewra )" crlf))
)

;"alpine","Adj","1.yUropa_kA_parvawIya_kRewra"
;Alpine flowers are very beautiful.
;
(defrule alpine1
(declare (salience 4900))
(id-root ?id alpine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peda_jo_parvawIya_kRewra_meM_pAye_jAwe_hEM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alpine.clp 	alpine1   "  ?id "  peda_jo_parvawIya_kRewra_meM_pAye_jAwe_hEM )" crlf))
)

;"alpine","N","1.peda_jo_parvawIya_kRewra_meM_pAye_jAwe_hEM"
;'Ashoka'  tree is basically an alpine.
;
