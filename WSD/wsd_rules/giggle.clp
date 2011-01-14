
(defrule giggle0
(declare (salience 5000))
(id-root ?id giggle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hIM-hIM-TI-TI_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  giggle.clp 	giggle0   "  ?id "  hIM-hIM-TI-TI_karanA )" crlf))
)

;"giggle","N","1.hIM-hIM-TI-TI_karanA"
;Stop giggling over silly jokes.
;
(defrule giggle1
(declare (salience 4900))
(id-root ?id giggle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hI-hIM-TI-TI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  giggle.clp 	giggle1   "  ?id "  hI-hIM-TI-TI_kara )" crlf))
)

;"giggle","V","1.hI-hIM-TI-TI_karanA"
;--"2.manxa-manxa_haMsanA"
;Girls giggled at his histrionics.
;
