
(defrule bosom0
(declare (salience 5000))
(id-root ?id bosom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bosom.clp 	bosom0   "  ?id "  CAwI )" crlf))
)

;"bosom","N","1.CAwI"
;His bosom was bursting with the secret.
;
(defrule bosom1
(declare (salience 4900))
(id-root ?id bosom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mana_meM_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bosom.clp 	bosom1   "  ?id "  mana_meM_raKa )" crlf))
)

;"bosom","VT","1.mana_meM_raKanA"
;She bosomed his letters
;
