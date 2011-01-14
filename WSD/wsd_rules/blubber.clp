
(defrule blubber0
(declare (salience 5000))
(id-root ?id blubber)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hvela_maCalI_kI_carabI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blubber.clp 	blubber0   "  ?id "  hvela_maCalI_kI_carabI )" crlf))
)

;"blubber","N","1.hvela_maCalI_kI_carabI"
;Oil is obtained from blubber.
;
(defrule blubber1
(declare (salience 4900))
(id-root ?id blubber)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ronA_-_bilaKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blubber.clp 	blubber1   "  ?id "  ronA_-_bilaKa )" crlf))
)

;"blubber","VI","1.ronA_-_bilaKanA"
;The Indian cricket fans blubbered after the team lost it's crucial match 
;against Zimbabwe.
;
