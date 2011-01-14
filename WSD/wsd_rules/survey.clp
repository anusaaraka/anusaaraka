
(defrule survey0
(declare (salience 5000))
(id-root ?id survey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paryavalokana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  survey.clp 	survey0   "  ?id "  paryavalokana )" crlf))
)

;"survey","N","1.paryavalokana"
;A quick survey of the street showed that no one was about.
;
(defrule survey1
(declare (salience 4900))
(id-root ?id survey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  survey.clp 	survey1   "  ?id "  jAzca )" crlf))
)

;"survey","V","1.jAzcanA/nirIkRaNa_karanA"
;Police had surveyed the person whom she thinks theif.
;--"2.sarvekRaNa_karanA"
;The minister did an areal survey of the city.
;
