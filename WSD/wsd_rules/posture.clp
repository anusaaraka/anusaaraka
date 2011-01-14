
(defrule posture0
(declare (salience 5000))
(id-root ?id posture)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id posturing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  posture.clp  	posture0   "  ?id "   )" crlf))
)

;"posturing","N","1."
;The union need to stop all this posturing && get down in serious talking.
;
(defrule posture1
(declare (salience 4900))
(id-root ?id posture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muxrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  posture.clp 	posture1   "  ?id "  muxrA )" crlf))
)

;"posture","N","1.muxrA"
;She has very good posture.
;--"2.ruKa"
;The newly elected government has adopted an uncompromising posture on the issue of immigration.
;
(defrule posture2
(declare (salience 4800))
(id-root ?id posture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKAvA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  posture.clp 	posture2   "  ?id "  xiKAvA_kara )" crlf))
)

;"posture","V","1.xiKAvA_karanA"
;He postured as a political activist.
;
