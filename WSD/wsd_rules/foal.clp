
(defrule foal0
(declare (salience 5000))
(id-root ?id foal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GodZe_kA_CotA_baccA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foal.clp 	foal0   "  ?id "  GodZe_kA_CotA_baccA )" crlf))
)

;"foal","N","1.GodZe_kA_CotA_baccA"
;A foal has been born to his horse.
;
(defrule foal1
(declare (salience 4900))
(id-root ?id foal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GodZI_kA_baccA_pExA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foal.clp 	foal1   "  ?id "  GodZI_kA_baccA_pExA_ho )" crlf))
)

;"foal","V","1.GodZI_kA_baccA_pExA_honA"
;His filly is foaled.
;
