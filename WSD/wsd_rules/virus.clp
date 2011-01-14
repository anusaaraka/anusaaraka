
(defrule virus0
(declare (salience 5000))
(id-root ?id virus)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAyarasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  virus.clp 	virus0   "  ?id "  vAyarasa )" crlf))
)

; Changed by Diptiji
(defrule virus1
(declare (salience 4900))
(id-root ?id virus)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUwa_ke_rogoM_kA_viRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  virus.clp 	virus1   "  ?id "  CUwa_ke_rogoM_kA_viRa )" crlf))
)

;"virus","N","1.CUwa_ke_rogoM_kA_viRa"
;Virus for common cold is highly contageous.
;
;
