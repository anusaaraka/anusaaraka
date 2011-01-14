
(defrule crate0
(declare (salience 5000))
(id-root ?id crate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAna_le_jAne_kI_petI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crate.clp 	crate0   "  ?id "  sAmAna_le_jAne_kI_petI )" crlf))
)

;"crate","N","1.sAmAna_le_jAne_kI_petI"
;She has bought two crates of cool drinks. 
;
(defrule crate1
(declare (salience 4900))
(id-root ?id crate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id petI_meM_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crate.clp 	crate1   "  ?id "  petI_meM_bAzXa )" crlf))
)

;"crate","V","1.petI_meM_bAzXanA"
;The glassware has been crated. 
;
