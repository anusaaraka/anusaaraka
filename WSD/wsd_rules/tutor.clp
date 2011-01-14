
(defrule tutor0
(declare (salience 5000))
(id-root ?id tutor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tutor.clp 	tutor0   "  ?id "  SikRaka )" crlf))
)

;"tutor","N","1.SikRaka"
;The lady was appointed as a tutor for the children of  a rich businessman.
;
(defrule tutor1
(declare (salience 4900))
(id-root ?id tutor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikRA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tutor.clp 	tutor1   "  ?id "  SikRA_xe )" crlf))
)

;"tutor","V","1.SikRA_xenA"
;He tutored his son to be polite.
;
