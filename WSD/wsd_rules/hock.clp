
(defrule hock0
(declare (salience 5000))
(id-root ?id hock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnavaroM_ke_piCale_pEra_kA_jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hock.clp 	hock0   "  ?id "  jAnavaroM_ke_piCale_pEra_kA_jodZa )" crlf))
)

;"hock","N","1.jAnavaroM_ke_piCale_pEra_kA_jodZa"
;GodZe ke piCale pEra kI 'hock'nAmaka jodZa bahuwa majabUwa howA hE. 
;
(defrule hock1
(declare (salience 4900))
(id-root ?id hock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id giravI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hock.clp 	hock1   "  ?id "  giravI_raKa )" crlf))
)

;"hock","V","1.giravI_raKanA"
;usane apanA karja cukAne ke liye puSwenI makAna' hock'(giravI)raKa xiyA.
;
