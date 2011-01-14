
(defrule outboard0
(declare (salience 5000))
(id-root ?id outboard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAharI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outboard.clp 	outboard0   "  ?id "  bAharI )" crlf))
)

;"outboard","Adj","1.bAharI{jahAja_kA}"
;The gull flew in from the outboard.
;
(defrule outboard1
(declare (salience 4900))
(id-root ?id outboard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bota_ke_piCale_hisse_meM_lagA_iMjina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outboard.clp 	outboard1   "  ?id "  bota_ke_piCale_hisse_meM_lagA_iMjina )" crlf))
)

;"outboard","N","1.bota_ke_piCale_hisse_meM_lagA_iMjina"
;The outboard helped them to win the race.
;
