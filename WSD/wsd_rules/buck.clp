;$$$ Modified By Garima Singh(M.Tech-C.S, Bansthali Vidyapith)14-Feb-2014
;Added '(not(kriyA-object ?id ?)) ' relation
;Buck up!we are getting late.
;jalxI karo! hameM xera ho rahI hE
(defrule buck0
(declare (salience 5000))
(id-root ?id buck)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(not(kriyA-object ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jalxI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buck.clp	buck0  "  ?id "  " ?id1 "  jalxI_kara  )" crlf))
)


;$$$ Modified by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)14-Feb-2014
;changed the meaning from 'KuSa_ho' to  'KuSa_kara', removed '(kriyA-upasarga ?id ?id1)' relation and added '(kriyA-kriyA_viSeRaNa  ?id ?id1)' relation 
;The good news bucked us all up.[oald]
;अच्छी खबर ने हम सबको खुश कर दिया
; Good result bucked all the children up. 
;acCe pariNAma ne saBI baccoM ko KuSa kara xiyA
(defrule buck1
(declare (salience 5000));changed the salience from 4900 to 5000
(id-root ?id buck)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
;(kriyA-upasarga ?id ?id1)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(kriyA-object  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KuSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buck.clp	buck1  "  ?id "  " ?id1 "  KuSa_kara  )" crlf))
)

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14-Feb-2014
;Buck up your behaviour or you'll be out of this school.[old example]
;vyavahAra meM suXAra lAo nahIM wo skUla se bAhara ho jAoge
(defrule buck2
(declare (salience 4800))
(id-root ?id buck)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?obj)
(viSeRya-RaRTI_viSeRaNa  ?obj ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 suXAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buck.clp	buck2  "  ?id "  " ?id1 "  suXAra_kara  )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14-Feb-2014
;He admired her willingness to buck the system.[oald]
;उन्होंने  उसके सिस्टम का विरोध करने की इच्छा की प्रशंसा की.
(defrule buck5
(declare (salience 5000))
(id-root ?id buck)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?obj ?)
(kriyA-object  ?id ?obj)
(to-infinitive  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viroXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buck.clp 	buck5   "  ?id "  viroXa_kara )" crlf))
)


;*******************************DEFAULT RULES****************************************


(defrule buck3
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id buck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hiraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buck.clp 	buck3   "  ?id "  hiraNa )" crlf))
)

;default_sense && category=noun	mqga/hirana	0
;"buck","N","1.mqga/hirana"
;I saw three wild bucks in the bushes.
;


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14-Feb-2014
;The boat bucked and heaved beneath them.[oald]
;नाव अचानक ऊपर नीचे हुयी/ अचानक डगमगायी और उनके नीचे चली गयी
(defrule buck4
(declare (salience 0))
(id-root ?id buck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAnaka_Upara_nIce_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buck.clp 	buck4   "  ?id "  acAnaka_Upara_nIce_ho )" crlf))
)
