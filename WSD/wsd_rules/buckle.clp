
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 13-Feb-2014
;I'd better buckle down to those reports.[oald]
;अच्छा होगा कि मैं उन रिपोर्टों पर गंभीरता से कार्य शुरु करूँ 
(defrule buckle2
(declare (salience 5000))
(id-root ?id buckle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gaMBIrawA_se_kArya_SurU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buckle.clp	buckle2  "  ?id "  " ?id1 "  gaMBIrawA_se_kArya_SurU_kara  )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 13-Feb-2014
;These shoes buckle at the side.[oald]
;जूते किनारे में बकसुए से बंधते है
(defrule buckle3
(declare (salience 5000))
(id-root ?id buckle)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakasue_se_baMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buckle.clp 	buckle3   "  ?id "  bakasue_se_baMXa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 13-Feb-2014
;The crash buckled the front of my car.[oald]
;दुर्घटना/टक्कर ने मेरी गाड़ी के सामने के हिस्से को मोड़ दिया.
(defrule buckle4
(declare (salience 5000))
(id-root ?id buckle)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(kriyA-subject  ?id ?sub)
(id-word ?sub crash)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id modZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buckle.clp 	buckle4   "  ?id "  modZa_xe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14-Feb-2014
;A weaker man would have buckled under the pressure.[oald]
;कमजोर आदमी दबाव में आकर टूट सकता है
(defrule buckle5
(declare (salience 5000))
(id-root ?id buckle)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(kriyA-under_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buckle.clp 	buckle5   "  ?id "  tUta )" crlf))
)



(defrule buckle0
(declare (salience 5000))
(id-root ?id buckle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gaMBIrawA_se_kArya_SurU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buckle.clp	buckle0  "  ?id "  " ?id1 "  gaMBIrawA_se_kArya_SurU_kara  )" crlf))
)

;wuma gaMBIrawA se kArya karo yA cale jAo

;****************************DEFAULT RULES*******************************


;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 13-Feb-2014
;She buckled her belt.[oald]
;उसने उसकी बेल्ट का बकलस लगाया/बकसुआ बांधा
(defrule buckle1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id buckle)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakalasa_lagA));changed the meaning from 'sikuda' to 'bakalasa_lagA'
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buckle.clp 	buckle1   "  ?id "  bakalasa_lagA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* " buckle.clp    buckle1   "  ?id " kA )" crlf)
)
)


;default_sense && category=verb	bakala_lagAnA/bakasuA_lagA	0
;"buckle","VT","1.bakala_lagAnA/bakasuA_lagAnA"
;He buckled the shoes tightly.
;--"2.mudZanA"
;His knees buckled
;The highway buckled during the heatwave
;
;
