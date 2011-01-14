
(defrule vet0
(declare (salience 5000))
(id-root ?id vet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paSu_cikiwsaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vet.clp 	vet0   "  ?id "  paSu_cikiwsaka )" crlf))
)

;"vet","N","1.paSu_cikiwsaka"
;He is a vet
;
(defrule vet1
(declare (salience 4900))
(id-root ?id vet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BalI_prakAra_jAzca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vet.clp 	vet1   "  ?id "  BalI_prakAra_jAzca_kara )" crlf))
)

;"vet","V","1.BalI_prakAra_jAzca_karanA"
;Arun was vetted carefully && selected in the team
;
