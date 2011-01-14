
(defrule countenance0
(declare (salience 5000))
(id-root ?id countenance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKAkqwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  countenance.clp 	countenance0   "  ?id "  muKAkqwi )" crlf))
)

;"countenance","N","1.muKAkqwi"
;She has a pleasant countenance.
;--"2.samarWana"
;His boss would never give countenance to such a stupid plan.
;
(defrule countenance1
(declare (salience 4900))
(id-root ?id countenance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumoxana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  countenance.clp 	countenance1   "  ?id "  anumoxana_kara )" crlf))
)

;"countenance","VT","1.anumoxana_karanA"
;Never countenance a fraud.
;
