
(defrule clamour0
(declare (salience 5000))
(id-root ?id clamour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kolAhala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clamour.clp 	clamour0   "  ?id "  kolAhala )" crlf))
)

;"clamour","N","1.kolAhala"
;The clamour in the fish market gives me headache.
;
(defrule clamour1
(declare (salience 4900))
(id-root ?id clamour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kolAhala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clamour.clp 	clamour1   "  ?id "  kolAhala_kara )" crlf))
)

;"clamour","V","1.kolAhala_karanA/cillAnA"
;The photographers clamoured around the minister.
;
