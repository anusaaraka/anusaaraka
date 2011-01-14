
(defrule pencil0
(declare (salience 5000))
(id-root ?id pencil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peMsila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pencil.clp 	pencil0   "  ?id "  peMsila )" crlf))
)

;"pencil","N","1.peMsila"
;Have you sharpened your pencil.
;
(defrule pencil1
(declare (salience 4900))
(id-root ?id pencil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciwriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pencil.clp 	pencil1   "  ?id "  ciwriwa_kara )" crlf))
)

;"pencil","V","1.ciwriwa_karanA"
;She penciled a beautiful room.
;
