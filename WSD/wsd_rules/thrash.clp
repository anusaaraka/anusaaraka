
(defrule thrash0
(declare (salience 5000))
(id-root ?id thrash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id thrashing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pitAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  thrash.clp  	thrash0   "  ?id "  pitAI )" crlf))
)

;"thrashing","N","1.pitAI"
;The teacher gave him a good thrashing.
;
(defrule thrash1
(declare (salience 4900))
(id-root ?id thrash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMgIwa_ke_sAWa_pArtI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thrash.clp 	thrash1   "  ?id "  saMgIwa_ke_sAWa_pArtI )" crlf))
)

;"thrash","N","1.saMgIwa_ke_sAWa_pArtI"
;We will have a thrash after the exams.
;
(defrule thrash2
(declare (salience 4800))
(id-root ?id thrash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thrash.clp 	thrash2   "  ?id "  pIta )" crlf))
)

;"thrash","VT","1.pIta"
;Tom was thrashed by his master for not earning a penny.
;--"2.[anOpacArika]parAjiwa_karanA"
;Indian team was thrashed by the West Indian team.
;

;@@@ Added by Prachi Rathore[1-3-14]
;If we've got an important decision to make, we sometimes spend a whole day thrashing it out in a meeting.[cambridge]
;यदि हमे कोइ महत्त्वपूर्ण निर्णय लेना होता है, तो कभी कभी  हम पूरा दिन बैठक में यही बातचित करते हुए बिताते हैं . 
(defrule thrash3
(declare (salience 5000))
(id-root ?id thrash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAwaciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " thrash.clp 	thrash3 "  ?id "  " ?id1 " bAwaciwa_kara )" crlf))
)

;@@@ Added by Prachi Rathore[1-3-14]
;Thrash out a plan. [m-w]
;योजना बनाइए . 
(defrule thrash4
(declare (salience 5050))
(id-root ?id thrash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
(kriyA-object  ?id ?id2)
(id-root ?id2 plan)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " thrash.clp 	thrash4 "  ?id "  " ?id1 " banA )" crlf))
)


;@@@ Added by Prachi Rathore[1-3-14]
;They had a meeting to thrash out their problems.[m-w]
; उनकी समस्याएँ सुलझाने के लिये बैठक थी . 
(defrule thrash5
(declare (salience 5050))
(id-root ?id thrash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
(kriyA-object  ?id ?id2)
(id-root ?id2 problem)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sulaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " thrash.clp 	thrash5 "  ?id "  " ?id1 " sulaJA)" crlf))
)


;@@@ Added by Prachi Rathore[1-3-14]
;The animal thrashed about in pain.[oald]
;पशु दर्द में छटपटाया . 
(defrule thrash6
(declare (salience 5000))
(id-root ?id thrash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 about|around)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CatapatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " thrash.clp 	thrash6 "  ?id "  " ?id1 " CatapatA)" crlf))
)

;@@@ Added by Prachi Rathore[1-3-14]
;Our team was thrashed 18-0.[shiksharthi-kosh]
;हमारी टीम 18 के मुकाबले 0 से हार गयी 
(defrule thrash7
(declare (salience 5000))
(id-root ?id thrash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 team)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAra_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thrash.clp 	thrash7   "  ?id "  hAra_jA)" crlf))
)

