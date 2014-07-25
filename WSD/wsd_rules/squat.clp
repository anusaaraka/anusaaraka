
(defrule squat0
(declare (salience 1))
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
(declare (salience 1))
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
(declare (salience 1))
(id-root ?id squat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ukadZU_bETa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squat.clp 	squat2   "  ?id "  ukadZU_bETa )" crlf))
)

;@@@ Added by jagriti(4.1.2014)
;They ended up squatting in the empty houses on Oxford Road. 
;उन्होनें ऑक्सफोर्ड रोड पर खाली घरों में अवैध रूप से रहना बंद कर दिया.
;;The homeless couple were squatting in a private building.
;बेघर युगल एक निजी भवन में अवैध रूप से रह रहे थे.
(defrule squat3
(declare (salience 5000))
(id-root ?id squat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avEXa_rUpa_se_basa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squat.clp 	squat3   "  ?id "  avEXa_rUpa_se_basa_jA )" crlf))
)

;@@@ Added by jagriti(4.1.2014)
;They are living in a squat with no electricity.
;वे बिना बिजली के एक अवैध निवास-स्थान  में रह रहे हैं.
(defrule squat4
(declare (salience 4900))
(id-root ?id squat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avEXa_nivAsa_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squat.clp 	squat4   "  ?id "  avEXa_nivAsa_sWAna )" crlf))
)

;"squat","V","1.ukadZU_bETanA"
;The beggers squatted near the small fire.
;--"2.avEXa_rUpa_se_basa_jAnA"
;The homeless couple were squatting in a private building.
;
