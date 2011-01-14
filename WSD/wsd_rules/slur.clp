
(defrule slur0
(declare (salience 5000))
(id-root ?id slur)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aspaRta_AvAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slur.clp 	slur0   "  ?id "  aspaRta_AvAjZa )" crlf))
)

;"slur","N","1.aspaRta_AvAjZa"
;He continued to speak in a slur.
;
(defrule slur1
(declare (salience 4900))
(id-root ?id slur)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalaMka_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slur.clp 	slur1   "  ?id "  kalaMka_laga )" crlf))
)

;"slur","V","1.kalaMka_laganA"
;Traitor quisling slurred the image of his country poland.
;--"2.aspaRta_uccAraNa"
;He continued to slur his words.
;
