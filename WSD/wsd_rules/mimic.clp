
(defrule mimic0
(declare (salience 5000))
(id-root ?id mimic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakalacI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mimic.clp 	mimic0   "  ?id "  nakalacI )" crlf))
)

;"mimic","N","1.nakalacI"
;Monkeys && parrots are great mimics.
;
(defrule mimic1
(declare (salience 4900))
(id-root ?id mimic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mimic.clp 	mimic1   "  ?id "  nakala_kara )" crlf))
)

;"mimic","V","1.nakala_karanA"
;He can mimic his teachers well.
;
