
;FILE MODIFIED BY MEENA (26.8.09)




(defrule feel0
(declare (salience 5000))
(id-root ?id feel)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id feeling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id anuBUwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  feel.clp  	feel0   "  ?id "  anuBUwi )" crlf))
)

;given_word=feeling && word_category=noun	$BAvanA)

;"feeling","N","1.BAvanA"
;The speaker appealed to the feelings of the audiance
;--"2.boXa"
;I have a bad feeling in this matter.
;--"3.cewanA"
;I have lost all feelings in my leg.
;
(defrule feel1
(declare (salience 4900))
(id-root ?id feel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuBava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feel.clp 	feel1   "  ?id "  anuBava )" crlf))
)

;"feel","N","1.anuBava"
;Feel of this place is very depressing.
;Added by Meena(26.8.09)
;Biking feels good . 
(defrule feel2
(declare (salience 4900))
(id-root ?id feel)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-cat_coarse ?id1 verbal_noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahasUsa_ho))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feel.clp    feel2   "  ?id "  mahasUsa_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  feel.clp    feel2   "  ?id " se )" crlf)
)
)



(defrule feel3
(declare (salience 4800))
(id-root ?id feel)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahasUsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feel.clp 	feel3   "  ?id "  mahasUsa_kara )" crlf))
)

;"feel","V","1.mahasUsa_karanA"
;Can you feel the tension in this room ?
;You will feel better after taking this medicine.
;We all felt that the boss is a good person.
;The boss feels that he is suitable for this work.
;--"2.sparSa_se_anuBava_karanA"
;Doctors feel the pulse of the patient to sense his fever.
;3.tatolanA"
;He can feel his way in the dark.

