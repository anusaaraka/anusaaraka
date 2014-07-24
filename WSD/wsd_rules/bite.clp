;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 12/03/2014
;The election was a chance for the people to bite back at the government.[oald]
;चुनाव लोगों के लिये सरकार की तरफ अपना आक्रोश जताने का एक मौका था
(defrule bite7
(declare (salience 5000))
(id-root ?id bite)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 back)
(kriyA-at_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkroSa_jawAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bite.clp  	bite7  "  ?id "  " ?id1 "  AkroSa_jawAnA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 12/03/2014
;She bit back her anger.[oald]
;उसने उसका गुस्सा पी लिया
(defrule bite8
(declare (salience 5000))
(id-root ?id bite)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 back)
(kriyA-object  ?id ?obj)
(id-word ?obj anger)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pI_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bite.clp  	bite8  "  ?id "  " ?id1 "  pI_le)" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 12/03/2014
;Thousands of small businesses bite the dust every year.[oald]
;प्रत्येक वर्ष हजारों उद्योग असफल होते हैं
(defrule bite9
(declare (salience 5000))
(id-root ?id bite)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-word ?obj dust)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?obj asaPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bite.clp  	bite9  "  ?id "  " ?obj "  asaPala_ho)" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 12/03/2014
;The recession is beginning to bite.[oald]
;आर्थिक मन्दी असर दिखाना शुरु कर रही है .
(defrule bite10
(declare (salience 5000))
(id-root ?id bite)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(id-word ?sub recession)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id asara_xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bite.clp  	bite10   "  ?id "  asara_xiKA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 13/03/2014
;There's a bite in the air tonight.[oald]
;आज रात हवा में ठन्डक है
(defrule bite11
(declare (salience 5000))
(id-root ?id bite)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id ?id1)
(id-word ?id1 air)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Tandaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bite.clp  	bite11   "  ?id "  Tandaka )" crlf))
)



(defrule bite0
(declare (salience 5000))
(id-root ?id bite)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id biting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cuBawA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bite.clp  	bite0   "  ?id "  cuBawA_huA )" crlf))
)

;"biting","Adj","1.cuBawA_huA"
;It was biting cold outside.
;
;
(defrule bite1
(declare (salience 4900))
(id-root ?id bite)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzwa_se_kAta));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " bite.clp bite1 " ?id "  xAzwa_se_kAta )" crlf)) 
)

(defrule bite2
(declare (salience 4800))
(id-root ?id bite)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xAzwa_se_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bite.clp	bite2  "  ?id "  " ?id1 "  xAzwa_se_kAta  )" crlf))
)

(defrule bite3
(declare (salience 4700))
(id-root ?id bite)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta_le));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " bite.clp bite3 " ?id "  kAta_le )" crlf)) 
)

(defrule bite4
(declare (salience 4600))
(id-root ?id bite)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAta_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bite.clp	bite4  "  ?id "  " ?id1 "  kAta_le  )" crlf))
)

(defrule bite5
(declare (salience 4500))
(id-root ?id bite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bite.clp 	bite5   "  ?id "  kAta )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  bite.clp      bite5   "  ?id " ko )" crlf) 
)
)

(defrule bite6
(declare (salience 4400))
(id-root ?id bite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bite.clp 	bite6   "  ?id "  kOra )" crlf))
)

;"bite","N","1.kOra/kAta"
;He ate the sandwich in one bite.
;
;LEVEL 
;Headword : bite
;
;Examples --
;
;"bite","VT","1.kAtanA"
;His dog invariably tried to bite his friends.
;usake kuwwe ne hameSA usake xoswoM ko kAtane kI koSiSa kI.
;We went for a walk near the lake && the mosquitoes bit us badly.
;hama leka ke pAsa sEra karane ko gaye We Ora hameM macCaroM ne burI waraha se kAtA.
;--"2.xAzwa_mAranA"
;Ravi bit into the bread.
;ravi ne brEda meM xAzwa_mAre. <-- kAtA
;--"3.pakadZa_meM_AnA"
;Hari tried to sell him the plot in the suburbs but Moti wouldn't bite.
;hari ne Sahara ke bAhara kA apanA plOYta use becane kI koSiSa kI para mowI pakadZa meM nahIM AyA.   <---kAtane ke liye xAzwa se pakadZanA padZawA hE <--pakadZanA
;--"4.pakadZa"
;Front wheel tyers of her car are completely gone. They won't bite on
;slippery roads.
;usake agale pahiyoM ke watAyara bilkula KarAba ho gaye hEM. ve cikanI sadZakoM ko nahIM pakadZeMge.
;
;"bite","N","1.kOra/kAta"
;He ate the whole sandwich in one bite.
;usane pUrA sEMdavica eka kAta(kOra) meM KA liyA.
;--"2.katIlApana"
;The cool air has a bite today.
;Aja havA meM katIlApana hE. 
;
;
;
;sUwra : kAtanA^pakadZanA
