
(defrule parachute0
(declare (salience 5000))
(id-root ?id parachute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id havAI_CawarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parachute.clp 	parachute0   "  ?id "  havAI_CawarI )" crlf))
)

;"parachute","N","1.havAI_CawarI"
;The sky divers uses parachutes for their jumps.
;
(defrule parachute1
(declare (salience 4900))
(id-root ?id parachute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id havAI_jahAja_se_uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parachute.clp 	parachute1   "  ?id "  havAI_jahAja_se_uwara )" crlf))
)

;"parachute","V","1.havAI_jahAja_se_uwaranA"
;Anita loves parachuting from her father's plane.
;
