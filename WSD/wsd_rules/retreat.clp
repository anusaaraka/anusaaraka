
(defrule retreat0
(declare (salience 5000))
(id-root ?id retreat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vApasI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retreat.clp 	retreat0   "  ?id "  vApasI )" crlf))
)

;"retreat","N","1.vApasI"
;The N.C.C.cadets are in retreat from the camp.
;--"2.vApasI_kA_saMkewa"
;Sound the retreat on a bugle.
;--"3.ekAnwa-vAsa"
;She always spends her weekends at a country retreat.
;
(defrule retreat1
(declare (salience 4900))
(id-root ?id retreat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vApasa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retreat.clp 	retreat1   "  ?id "  vApasa_ho )" crlf))
)

;"retreat","VTI","1.vApasa_honA"
;He has forced the enemy to retreat.
;--"2.cale_jAnA"
;The forces retreated form the border after the peace treaty.
;--"3.pICe_hatanA"
;The flood water slowly retreated.
;--"4.kImawa_kama_honA"
;Nowadays share prices are retreating.
;
