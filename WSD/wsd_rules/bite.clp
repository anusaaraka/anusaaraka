
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
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xAzwa_se_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bite.clp	bite1  "  ?id "  " ?id1 "  xAzwa_se_kAta  )" crlf))
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
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAta_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bite.clp	bite3  "  ?id "  " ?id1 "  kAta_le  )" crlf))
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
