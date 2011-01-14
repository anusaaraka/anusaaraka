
(defrule preserve0
(declare (salience 5000))
(id-root ?id preserve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parirakRiwa_Pala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  preserve.clp 	preserve0   "  ?id "  parirakRiwa_Pala )" crlf))
)

;"preserve","N","1.parirakRiwa_Pala"
;Baratanatyam among the classical dances is a south Indian preserve.
;
(defrule preserve1
(declare (salience 4900))
(id-root ?id preserve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banAe_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  preserve.clp 	preserve1   "  ?id "  banAe_raKa )" crlf))
)

;"preserve","V","1.banAe_raKanA"
;Efforts are being made to preserve the wildlife.
;
