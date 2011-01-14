
(defrule palm0
(declare (salience 5000))
(id-root ?id palm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haWelI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  palm.clp 	palm0   "  ?id "  haWelI )" crlf))
)

;"palm","N","1.haWelI"
;Her palms are very soft.
;usakI haWeliyAz bahuwa mulAyama hEM
;--"2.wAdZa_kA_pedZa"
;There are a lot of palm trees along the beach.
;samuxrawata para bahuwa wAdZa ke pedZa hEM.
;
(defrule palm1
(declare (salience 4900))
(id-root ?id palm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muTTI_meM_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  palm.clp 	palm1   "  ?id "  muTTI_meM_raKa )" crlf))
)

;"palm","VT","1.muTTI_meM_raKanA"
;One minute the magician palmed the coin && the next minute it disappeared.
;eka palameM jAdUgara ne sikkA muTTI meM raKA Ora xUsare pala meM vaha gAyaba ho gayA.
;--"2.GUsa_xenA"
;I had to palm the accountant to get my loan sanctioned.
;muJe leKAkAra ko apane qNa svIkqwi ke liye GUsa xenI padZI.
;
