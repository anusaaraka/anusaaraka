
(defrule dole0
(declare (salience 5000))
(id-root ?id dole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dole.clp 	dole0   "  ?id "  xAna )" crlf))
)

;"dole","N","1.xAna/2.tukadZA"
(defrule dole1
(declare (salience 4900))
(id-root ?id dole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dole.clp 	dole1   "  ?id "  bAzta )" crlf))
)

;"dole","VT","1.bAztanA"
