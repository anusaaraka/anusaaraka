
(defrule tell0
(declare (salience 5000))
(id-root ?id tell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id telling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praBAva_pUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tell.clp  	tell0   "  ?id "  praBAva_pUrNa )" crlf))
)

;"telling","Adj","1.praBAva_pUrNa"
;In the exhibition ,his was a telling painting among other posters.
;
;
(defrule tell1
(declare (salience 4900))
(id-root ?id tell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gussA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tell.clp	tell1  "  ?id "  " ?id1 "  gussA_kara  )" crlf))
)



(defrule tell2
(declare (salience 4700))
(id-root ?id tell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gussA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tell.clp	tell2  "  ?id "  " ?id1 "  gussA_ho  )" crlf))
)


;Added by Meena (2.9.09)
;I told Jim a story.
(defrule tell3
(declare (salience 4700))
(id-root ?id tell)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object_2  ?id ?id3)
(kriyA-object_1  ?id ?id2)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawA))
(assert (kriyA_id-object1_viBakwi ?id ko))
;(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tell.clp      tell3   "  ?id "  bawA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object1_viBakwi   " ?*wsd_dir* "  tell.clp      tell3   "  ?id " ko )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  tell.clp      tell3   "  ?id " ko )" crlf)
)
)

;Added kriyA_id-object1_viBakwi --- by manju



;Added by Meena(2.9.09)
;I was told the whole story by Maybeline .
(defrule tell4
(declare (salience 4600))
(id-root ?id tell)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1)  was)
(id-word ?id  told)
(kriyA-subject ?id ?id1)
(kriyA-by_saMbanXI  ?id ?id2)
;(passive_kriyA  ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawA))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tell.clp      tell4   "  ?id "  bawA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  tell.clp      tell4   "  ?id " ko )" crlf)
)
)

;default_sense && category=verb bawA<obj2:ko>   0
(defrule tell5
(declare (salience 4500))
(id-root ?id tell)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(kriyA-object ?id ?id2)
(not (id-root ?id2 lie|story))
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawA))
(assert (kriyA_id-object1_viBakwi ?id ko))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tell.clp      tell5   "  ?id "  bawA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  tell.clp      tell5   "  ?id " ko )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object1_viBakwi   " ?*wsd_dir* "  tell.clp      tell5   "  ?id " ko )" crlf)
)
)




;In case of tell are the sentence types 'I told her a story' allowed?
;If yes, then obj should be changed to obj2, else obj is correct.
;"tell","VTI","1.bawAnA"
;He refused to tell the truth.
;He promised to tell the truth to the jury.
;--"2.sUciwa_karanA"
;The principal told the students about the seminar.
;--"3.xiKane_laganA"
;The age was beginning to tell on her face.
;
;

;@@@ Added by Prachi Rathore[27-11-13]
;His reputation as a troublemaker told against him when he tried to change his job.
;जब उसने नौकरी बदलनी चाही उसकी झगड़ालू आदत बाधक बनी.
(defrule tell6
(declare (salience 5000))
(id-root ?id tell)
?mng <-(meaning_to_be_decided ?id)
(kriyA-against_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bAXaka_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tell.clp  	tell6   "  ?id "  bAXaka_bana )" crlf))
)

;@@@ Added by Prachi Rathore[27-11-13]
;A succession of late nights had begun to tell on him and his work was suffering.
;लगातार देरतक जागने के कारण उसके स्वास्थ्य पर असर  दिखने  लगा है और उसके काम पर भी बुरा असर पड़ा रहा था.
(defrule tell7
(declare (salience 5000))
(id-root ?id tell)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xiKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tell.clp  	tell7   "  ?id "  xiKa )" crlf))
)

;@@@   ---Added by Prachi Rathore
;He prodded me in the back and told me to hurry up. [cambridge]
;उसने पीठ में मुझे चुभाया कि और मुझे जल्दी करने के लिये कहा 
(defrule tell8
(declare (salience 4000))
(id-root ?id tell)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(kriyA-vAkyakarma  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tell.clp  	tell8   "  ?id "  kaha )" crlf))
)



