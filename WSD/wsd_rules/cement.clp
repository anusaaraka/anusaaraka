
(defrule cement0
(declare (salience 5000))
(id-root ?id cement)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id simeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cement.clp 	cement0   "  ?id "  simeMta )" crlf))
)

(defrule cement1
(declare (salience 4900))
(id-root ?id cement)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cement.clp 	cement1   "  ?id "  jodZa )" crlf))
)

;"cement","VT","1.jodZanA"
;We cemented our friendship with trust.
;
;