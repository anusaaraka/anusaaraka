
(defrule yaw0
(declare (salience 5000))
(id-root ?id yaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicalana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yaw.clp 	yaw0   "  ?id "  vicalana )" crlf))
)

;"yaw","N","1.vicalana"
;The angle of yaw of aircraft was not straight.
;
(defrule yaw1
(declare (salience 4900))
(id-root ?id yaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yaw.clp 	yaw1   "  ?id "  vicala )" crlf))
)

;"yaw","V","1.vicalanA"
;The aircraft kept yawing due to bad weather.
;
