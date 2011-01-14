
(defrule grab0
(declare (salience 5000))
(id-root ?id grab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Japata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grab.clp 	grab0   "  ?id "  Japata )" crlf))
)

;"grab","V","1.Japata"
(defrule grab1
(declare (salience 4900))
(id-root ?id grab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grab.clp 	grab1   "  ?id "  pakadZa )" crlf))
)

;"grab","VT","1.pakadZanA"
;The police grabbed the thief.
;
