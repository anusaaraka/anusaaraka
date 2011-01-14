
(defrule squat0
(declare (salience 5000))
(id-root ?id squat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gola-matola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squat.clp 	squat0   "  ?id "  gola-matola )" crlf))
)

;"squat","Adj","1.gola-matola"
;His dog is squat && heavy.
;
(defrule squat1
(declare (salience 4900))
(id-root ?id squat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTaka-bETaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squat.clp 	squat1   "  ?id "  uTaka-bETaka )" crlf))
)

;"squat","N","1.uTaka-bETaka"
;He does 70 squats every day.
;
(defrule squat2
(declare (salience 4800))
(id-root ?id squat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ukadZU_bETa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squat.clp 	squat2   "  ?id "  ukadZU_bETa )" crlf))
)

;"squat","V","1.ukadZU_bETanA"
;The beggers squatted near the small fire.
;--"2.avEXa_rUpa_se_basa_jAnA"
;The homeless couple were squatting in a private building.
;
