
(defrule foresee0
(declare (salience 5000))
(id-root ?id foresee)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id foreseen )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pUrvaxqRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  foresee.clp  	foresee0   "  ?id "  pUrvaxqRta )" crlf))
)

;"foreseen","Adj","1.pUrvaxqRta"
(defrule foresee1
(declare (salience 4900))
(id-root ?id foresee)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrvAnumAna_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foresee.clp 	foresee1   "  ?id "  pUrvAnumAna_lagA )" crlf))
)

;"foresee","VT","1.pUrvAnumAna_lagAnA"
;I forsee some danger in the next 24hrs.
;It is difficult to foresee the future of any country.
;
;