
(defrule jackknife0
(declare (salience 5000))
(id-root ?id jackknife)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CurI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jackknife.clp 	jackknife0   "  ?id "  CurI )" crlf))
)

;"jackknife","N","1.CurI{jise_modZA_jA_sakawA_hE}"
;A jackknife is easy to carry.
;
(defrule jackknife1
(declare (salience 4900))
(id-root ?id jackknife)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIca_meM_se_mudanA_Ora_niyaMwraNa_Ko_bETa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jackknife.clp 	jackknife1   "  ?id "  bIca_meM_se_mudanA_Ora_niyaMwraNa_Ko_bETa )" crlf))
)

;"jackknife","V","1.bIca_meM_se_mudanA_Ora_niyaMwraNa_Ko_bETanA"
;An articulated lorry has jackknifed on National Highway no.1.
;
