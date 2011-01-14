
(defrule pillage0
(declare (salience 5000))
(id-root ?id pillage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lUtamAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pillage.clp 	pillage0   "  ?id "  lUtamAra )" crlf))
)

;"pillage","N","1.lUtamAra"
;Horrible accounts are heard of pillage during the wars.
;
(defrule pillage1
(declare (salience 4900))
(id-root ?id pillage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pillage.clp 	pillage1   "  ?id "  lUta )" crlf))
)

;"pillage","V","1.lUtanA"
;The town was pillaged by the decoits.
;
