
(defrule rouge0
(declare (salience 5000))
(id-root ?id rouge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rouge.clp 	rouge0   "  ?id "  lAlI )" crlf))
)

;"rouge","N","1.lAlI{prakAra_kA_lAla_raMga_jo_cehare_yA_oToz_para_lagAwe_hEz}"
;She never comes out of her house without applying rouge on her face.
;
(defrule rouge1
(declare (salience 4900))
(id-root ?id rouge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAlI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rouge.clp 	rouge1   "  ?id "  lAlI_lagA )" crlf))
)

;"rouge","VT","1.lAlI_lagAnA"
;The artists rouge themselves to create proper effect.
;
