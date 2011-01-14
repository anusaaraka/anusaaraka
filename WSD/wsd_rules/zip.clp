
(defrule zip0
(declare (salience 5000))
(id-root ?id zip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZipa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  zip.clp 	zip0   "  ?id "  jZipa )" crlf))
)

;"zip","N","1.jZipa{parsa/pawalUna_Axi_baMxa_karane_kelie_jaMjIra_jEsA_upakaraNa}"
;The zip of her purse is stuck.
;--"2.sanasanI_AvAjZa"
;The zip of the jet frightened the child.
;
(defrule zip1
(declare (salience 4900))
(id-root ?id zip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZipa_KolanA_yA_baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  zip.clp 	zip1   "  ?id "  jZipa_KolanA_yA_baMxa_kara )" crlf))
)

;"zip","V","1.jZipa_KolanA_yA_baMxa_karanA"
;She zipped open her bag.
;--"2.bahuwa_wejZI_se_jAnA"
;The jet zipped across the sky.
;
