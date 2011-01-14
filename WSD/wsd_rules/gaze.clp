
(defrule gaze0
(declare (salience 5000))
(id-root ?id gaze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id takatakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gaze.clp 	gaze0   "  ?id "  takatakI )" crlf))
)

;"gaze","N","1.takatakI"
;The child looked at the toy with an innocent gaze.
;
(defrule gaze1
(declare (salience 4900))
(id-root ?id gaze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id takatakI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gaze.clp 	gaze1   "  ?id "  takatakI_lagA )" crlf))
)

;"gaze","V","1.takatakI_lagAnA/GUranA"
;The stranger gazed at children.
;
