
(defrule jerk0
(declare (salience 5000))
(id-root ?id jerk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JatakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jerk.clp 	jerk0   "  ?id "  JatakA )" crlf))
)

(defrule jerk1
(declare (salience 4900))
(id-root ?id jerk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Jataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jerk.clp 	jerk1   "  ?id "  Jataka )" crlf))
)

;"jerk","V","1.JatakanA"
;My anklet jerked while playing badminton.
; 
;"jerkin","N","1.cuswa_jAketa"
;He is wearing a dark jerkin.
;
;