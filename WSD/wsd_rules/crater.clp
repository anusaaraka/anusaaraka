
(defrule crater0
(declare (salience 5000))
(id-root ?id crater)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jvAlAmuKI_pahAdZa_kA_muzha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crater.clp 	crater0   "  ?id "  jvAlAmuKI_pahAdZa_kA_muzha )" crlf))
)

;"crater","N","1.jvAlAmuKI_pahAdZa_kA_muzha"
;There was a big crater on the top of the volcano.            
;
(defrule crater1
(declare (salience 4900))
(id-root ?id crater)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id visPota_ke_PalasvarUpa_hone_vAlA_gadDA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crater.clp 	crater1   "  ?id "  visPota_ke_PalasvarUpa_hone_vAlA_gadDA )" crlf))
)

;"crater","V","1.visPota_ke_PalasvarUpa_hone_vAlA_gadDA"
;Necular tests in Pokhran crated the landscape.
;
