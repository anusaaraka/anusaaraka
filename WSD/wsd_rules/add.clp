
;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith) 15/03/2014
;When two quantities are added or subtracted the absolute error in the final result is the sum of the absolute errors in the individual quantities[ncert]
;जब दो राशियों को सङ्कलित या व्यवकलित किया जाता है, तो अन्तिम परिणाम में निरपेक्ष त्रुटि उन राशियों की निरपेक्ष त्रुटियों के योग के बराबर होती है..
(defrule add6
(declare (salience 4750))
(id-word ?id added)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 quantities)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id safkaliwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " add.clp  add6  " ?id "   safkaliwa_kara  )" crlf))
)

;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith) 15/03/2014
;In other words we can add or subtract similar physical quantities.[ncert]
;दूसरे शब्दों में, हम केवल एक ही प्रकार की राशियों का सङ्कलन या व्यवकलन कर सकते हैं
(defrule add7
(declare (salience 4750))
(id-root ?id add)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 quantities)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id safkalana_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " add.clp  add7  " ?id "   safkalana_kara  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  add.clp      add7   "  ?id " kA )" crlf)
)
)

;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith) 18/03/2014
;Scalars can be added subtracted multiplied and divided just as the ordinary numbers.[ncert]
;अदिशों को हम ठीक वैसे ही जोड सकते हैं, घटा सकते हैं, गुणा या भाग कर सकते हैं जैसा कि हम सामान्य सङ्ख्याओं के साथ करते हैं .
(defrule add8
(declare (salience 4750))
(id-root ?id add)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 scalars|numbers|vectors)
(or(kriyA-subject  ?id ?id1)(kriyA-object  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " add.clp  add8  " ?id "   jodZa  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  add.clp      add8   "  ?id " ko )" crlf)
)
)

(defrule add0
(declare (salience 5000))
(id-root ?id add)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-back_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_jodZa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " add.clp add0 " ?id "  Pira_jodZa )" crlf)) 
)

(defrule add1
(declare (salience 4900))
(id-root ?id add)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Pira_jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " add.clp	add1  "  ?id "  " ?id1 "  Pira_jodZa  )" crlf))
)



(defrule add2
(declare (salience 4800))
(id-root ?id add)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yoga_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " add.clp add2 " ?id "  yoga_ho )" crlf)) 
)

(defrule add3
(declare (salience 4750))
(id-root ?id add)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yoga_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " add.clp	add3  "  ?id "  " ?id1 "  yoga_ho  )" crlf))
)

;$$$ Modified by July workshop participants under Aditi and Soma guidance (10-07-14)
;removed --- (not (id-cat_coarse ?id1 number));added by Shirisha Manju (13-06-13) Suggested by Sukhada
;Changed 'wsd_word_mng' as 'wsd_root_mng' => milAo  as milA
;Add some sugar.
;kuCa cInI milAiye. 
(defrule add4
(declare (salience 4700))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id add)
(kriyA-object ?id ?id1)
(id-root ?id1 air|water|milk|juice|oil|sand|sugar|salt|mineral|acid|spices) ;added by July workshop participants on 10-07-14
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  add.clp    add4   "  ?id "  milA )" crlf))
)

;@@@ Added by Shirisha Manju Suggested by Sukhada (16-7-14)
;Add one spoonful of sugar.
;eka cammaca cInI milAiye. 
(defrule add10
(declare (salience 4700))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id add)
(kriyA-object ?id ?obj)
(viSeRya-of_saMbanXI  ?obj ?id1)
(id-root ?id1 air|water|milk|juice|oil|sand|sugar|salt|mineral|acid|spices)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  add.clp    add10   "  ?id "  milA )" crlf))
)



;@@@ Added by July workshop participants under Aditi and Soma guidance [11-07-14]
;"I bought a pen", he added.
;usane Age kahA, "mEMne kalama KarIxI".
;He added that the revolutionaries will not fall into the trap.
;usane Age kahA kI krAnwikArI jAla meM nahIM PaseMge.
(defrule add9
(declare (salience 4700))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id add)
(kriyA-vAkyakarma ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  add.clp    add9   "  ?id "  Age_kaha )" crlf))
)


;$$$ Modified by July workshop participants under Aditi and Soma guidance [10-7-14]
;Changed meaning from 'Age_kaha' to 'jodZa'
;It is added to their blacklist.        COCA
;yaha unakI kAlI-sUcI meM jodZA gayA.
;A new wing was added to the building.  OALD
;Bavana meM eka nayA viNga jodZA gayA.
;New features can be added to the existing systems. COCA
;mOjUxA praNaliyoM meM nayI viSeRawAyeM jodZI jA sakawI hEM.
(defrule add5
(declare (salience 4600))
(id-root ?id add)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  add.clp 	add5   "  ?id "  jodZa )" crlf))
)

;Added by Aditya and Hardik,
;"milAo"
;Add one spoonful of sugar.
;Add a cup of water.
;kriyA-object relation between "cup" and "Add". Same relation in following.
;I want to add a cup to my collection.

