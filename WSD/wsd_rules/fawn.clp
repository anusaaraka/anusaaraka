
(defrule fawn0
(declare (salience 5000))
(id-root ?id fawn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAkI_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fawn.clp 	fawn0   "  ?id "  KAkI_raMga )" crlf))
)

(defrule fawn1
(declare (salience 4900))
(id-root ?id fawn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prema_jawalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fawn.clp 	fawn1   "  ?id "  prema_jawalA )" crlf))
)

;"fawn","V","1.prema_jawalAnA/cApalUsI_karanA"
;Rich persons like to be fawned upon by others.
;
;