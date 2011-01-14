
(defrule shriek0
(declare (salience 5000))
(id-root ?id shriek)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shriek.clp 	shriek0   "  ?id "  cIKa )" crlf))
)

;"shriek","N","1.cIKa"
;On hearing the shriek of the boy we all ran towards him.
;
(defrule shriek1
(declare (salience 4900))
(id-root ?id shriek)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shriek.clp 	shriek1   "  ?id "  cIKa )" crlf))
)

;"shriek","V","1.cIKanA"
;The girl shrieked after seeing a dog on the street.
;--"2.cillAnA"
;'I hate you', he shrieked.
;
