
(defrule grin0
(declare (salience 5000))
(id-root ?id grin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upahAsa_rUpI_muskurAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grin.clp 	grin0   "  ?id "  upahAsa_rUpI_muskurAhata )" crlf))
)

;"grin","N","1.upahAsa_rUpI_muskurAhata"
;He gave a grin of derision.
;
(defrule grin1
(declare (salience 4900))
(id-root ?id grin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzwa_xiKAwe_hue_muskurA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grin.clp 	grin1   "  ?id "  xAzwa_xiKAwe_hue_muskurA )" crlf))
)

;"grin","V","1.xAzwa_xiKAwe_hue_muskurAnA"
;She grinned with delight.
;
