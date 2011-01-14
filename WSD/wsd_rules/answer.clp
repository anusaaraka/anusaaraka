
(defrule answer0
(declare (salience 5000))
(id-root ?id answer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwwaraxAyI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " answer.clp	answer0  "  ?id "  " ?id1 "  uwwaraxAyI_ho  )" crlf))
)

;You will have to answer for your mistakes one day.
;wumhe eka xina apanI galawiyoM ke lie uwwaraxAyI honA hogA
(defrule answer1
(declare (salience 4900))
(id-root ?id answer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  answer.clp 	answer1   "  ?id "  uwwara )" crlf))
)

;"answer","N","1.uwwara"
;She didn't want to give any answer to his question.



;Added by Meena(21.10.09)
;His reluctance to answer her questions simply fanned her curiosity . 
(defrule answer2
(declare (salience 4800))
(id-root ?id answer)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwara_xe))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  answer.clp    answer2   "  ?id "  uwwara_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  answer.clp      answer2   "  ?id " kA )" crlf)
)
)




;Salience reduced by Meena(21.10.09).
(defrule answer3
(declare (salience 1000))
(id-root ?id answer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  answer.clp 	answer3   "  ?id "  uwwara_xe )" crlf))
)

;"answer","V","1.uwwara_xenA"
;She didn't want to answer his question.
;Everyman must answer for his actions to God.
;
