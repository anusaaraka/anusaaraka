
(defrule couch0
(declare (salience 5000))
(id-root ?id couch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  couch.clp 	couch0   "  ?id "  KAta )" crlf))
)

;"couch","N","1.KAta/palafga"
;Her child slept on the couch.
;
(defrule couch1
(declare (salience 4900))
(id-root ?id couch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CipA_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  couch.clp 	couch1   "  ?id "  CipA_raha )" crlf))
)

;"couch","V","1.CipA_rahanA"
;Her letter was couched in insolent language.
;--"2.ciwa_letanA"
;A cow couched on a grassy field.
;
