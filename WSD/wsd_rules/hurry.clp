
(defrule hurry0
(declare (salience 5000))
(id-root ?id hurry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurry.clp 	hurry0   "  ?id "  jalxI )" crlf))
)

;"hurry","N","1.jalxI"
;tInU 'hurry' meM apanA pAsaporta lenA BUla gayA.
;
(defrule hurry1
(declare (salience 4900))
(id-root ?id hurry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalxI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurry.clp 	hurry1   "  ?id "  jalxI_kara )" crlf))
)

;"hurry","V","1.jalxI_karanA"
;vaha sArA kAma'hurry' meM karawA hE.
;

;;@@@   ---Added by Prachi Rathore
;He prodded me in the back and told me to hurry up. [cambridge]
;उसने पीठ में मुझे चुभाया कि और मुझे जल्दी करने के लिये कहा  
(defrule hurry2
(declare (salience 5000))
(id-root ?id hurry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jalxI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hurry.clp	hurry2  "  ?id "  " ?id1 "  jalxI_kara  )" crlf))
)

;@@@ Added by Prachi Rathore[15-1-14]
;She hurried on before he could interrupt her.[oald]
;
(defrule hurry3
(declare (salience 5000))
(id-root ?id hurry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bolanA_jArI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hurry.clp	hurry3  "  ?id "  " ?id1 "  bolanA_jArI_raKa  )" crlf))
)
