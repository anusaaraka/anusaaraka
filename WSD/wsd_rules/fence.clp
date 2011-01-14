
(defrule fence0
(declare (salience 5000))
(id-root ?id fence)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fencing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id walavAra_se_ladZAI_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fence.clp  	fence0   "  ?id "  walavAra_se_ladZAI_karanA )" crlf))
)

;"fencing","N","1.walavAra_se_ladZAI_karanA"
;In fencing the more agile player normally wins.
;
(defrule fence1
(declare (salience 4900))
(id-root ?id fence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bADZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fence.clp 	fence1   "  ?id "  bADZa )" crlf))
)

;"fence","N","1.bADZa/bAdZA"
;He has put up a fence around his garden.
;
(defrule fence2
(declare (salience 4800))
(id-root ?id fence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walavAra_yA_gaxA_kI_ladZAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fence.clp 	fence2   "  ?id "  walavAra_yA_gaxA_kI_ladZAI )" crlf))
)

;"fence","V","1.walavAra_yA_gaxA_kI_ladZAI"
;In films the actors fence with wooden swords to avoid injury.
;--"2.GumA_PirA_ke_bAwa_karanA"
;He always fences around the main issues to avoid giving major decisions.
;
