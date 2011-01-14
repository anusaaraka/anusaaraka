
(defrule journey0
(declare (salience 5000))
(id-root ?id journey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  journey.clp 	journey0   "  ?id "  yAwrA )" crlf))
)

;"journey","N","1.yAwrA"
;Have a nice journey!
;
(defrule journey1
(declare (salience 4900))
(id-root ?id journey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAwrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  journey.clp 	journey1   "  ?id "  yAwrA_kara )" crlf))
)

;"journey","V","1.yAwrA_karanA"
;He has been jouneying for a month in connection with the Assembly elections.
;
