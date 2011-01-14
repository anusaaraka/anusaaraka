
(defrule fax0
(declare (salience 5000))
(id-root ?id fax)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEksa_yaMwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fax.clp 	fax0   "  ?id "  PEksa_yaMwra )" crlf))
)

;"fax","N","1.PEksa_yaMwra"
(defrule fax1
(declare (salience 4900))
(id-root ?id fax)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEksa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fax.clp 	fax1   "  ?id "  PEksa_kara )" crlf))
)

;"fax","V","1.PEksa_karanA"
;Please fax the documents on recent negotiations to me.
;
