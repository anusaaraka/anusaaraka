
(defrule incense0
(declare (salience 5000))
(id-root ?id incense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sugaMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  incense.clp 	incense0   "  ?id "  sugaMXa )" crlf))
)

;"incense","N","1.sugaMXa"
;I like the incence of the sandal.
;
(defrule incense1
(declare (salience 4900))
(id-root ?id incense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aga_babUlA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  incense.clp 	incense1   "  ?id "  Aga_babUlA_kara )" crlf))
)

;"incense","V","1.Aga_babUlA_karanA"
;--"2.nArAjZa_karanA/gussA_xilAnA"
;She was incensed by his abusive words.
;
