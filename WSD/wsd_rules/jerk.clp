
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

;@@@ Added by Prachi Rathore[29-1-14]
;She jerked her head up.[oald]
;उसने उसका सिर झटका . 
(defrule jerk2
(declare (salience 5000))
(id-root ?id jerk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Jataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affectedids-wsd_group_root_mng   " ?*wsd_dir* " jerk.clp 	jerk2   "  ?id "  " ?id1 "  Jataka )" crlf))
)


;@@@ Added by Prachi Rathore[29-1-14]
;Consumers are often jerked around by big companies.[oald]
;उपभोगता बडी कम्पनियों द्वारा अक्सर मूर्ख बनाये जाते हैं . 
(defrule jerk3
(declare (salience 5000))
(id-root ?id jerk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 around)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mUrKa_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jerk.clp 	jerk3   "  ?id "  " ?id1 "  mUrKa_banA )" crlf))
)
