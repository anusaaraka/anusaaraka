
(defrule clink0
(declare (salience 5000))
(id-root ?id clink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tana-tana_kI_AvAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clink.clp 	clink0   "  ?id "  tana-tana_kI_AvAjZa )" crlf))
)

;"clink","N","1.tana-tana_kI_AvAjZa"
;I heard the clink of keys.
;
(defrule clink1
(declare (salience 4900))
(id-root ?id clink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tana-tana_AvAjZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clink.clp 	clink1   "  ?id "  tana-tana_AvAjZa_kara )" crlf))
)

;"clink","V","1.tana-tana_AvAjZa_karanA"
;He clinked the bunch of keys.
;
