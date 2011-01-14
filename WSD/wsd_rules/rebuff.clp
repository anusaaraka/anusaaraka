
(defrule rebuff0
(declare (salience 5000))
(id-root ?id rebuff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAyawA_pUCane_vAle_ko_xo_tUka_javAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rebuff.clp 	rebuff0   "  ?id "  sahAyawA_pUCane_vAle_ko_xo_tUka_javAba )" crlf))
)

;"rebuff","N","1.sahAyawA_pUCane_vAle_ko_xo_tUka_javAba"
;My request met with a rebuff from him.  
;
(defrule rebuff1
(declare (salience 4900))
(id-root ?id rebuff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rebuff.clp 	rebuff1   "  ?id "  roka )" crlf))
)

;"rebuff","V","1.rokanA"
;His advances were rebuffed by the girl.
;
