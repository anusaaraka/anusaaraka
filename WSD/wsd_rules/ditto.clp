
(defrule ditto0
(declare (salience 5000))
(id-root ?id ditto)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ditto.clp 	ditto0   "  ?id "  vahI )" crlf))
)

;"ditto","N","1.vahI"
(defrule ditto1
(declare (salience 4900))
(id-root ?id ditto)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ditto.clp 	ditto1   "  ?id "  sammawa_ho )" crlf))
)

;"ditto","VT","1.sammawa_honA/eka_mawa_honA"
;The next speaker dittoed her argument
;
