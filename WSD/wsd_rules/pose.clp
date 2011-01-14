
(defrule pose0
(declare (salience 5000))
(id-root ?id pose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pose.clp 	pose0   "  ?id "  praswuwa_kara )" crlf))
)

(defrule pose1
(declare (salience 4900))
(id-root ?id pose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muxrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pose.clp 	pose1   "  ?id "  muxrA )" crlf))
)

;"pose","N","1.muxrA"
;I made a comfortable pose for the camera.
;--"2.Cala-kapata"
;Her generosity is only a pose.
;
;