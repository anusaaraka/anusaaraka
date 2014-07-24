;The tea bubbled over.
;cAya meM uPAna A gayA
(defrule bubble0
(declare (salience 5000))
(id-root ?id bubble)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uPAna_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bubble.clp	bubble0  "  ?id "  " ?id1 "  uPAna_A  )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14-Feb-2014
;A bubble of laughter.[oald]
;हँसी का फव्वारा
(defrule bubble4
(declare (salience 5000))
(id-root ?id bubble)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 laughter)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PavvArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bubble.clp 	bubble4   "  ?id "  PavvArA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14-Feb-2014
;Here are two records that are bubbling under.[oald]
;यहाँ दो अभिलेख हैं जो जल्द ही बहुत लोकप्रीय हो रहे हैं . 
(defrule bubble5
(declare (salience 5000))
(id-root ?id bubble)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) under)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) jalxa_hI_bahuwa_lokaprIya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bubble.clp	bubble5  "  ?id "  " (+ ?id 1) "  jalxa_hI_bahuwa_lokaprIya_ho )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14-Feb-2014
;The water in the pan was beginning to bubble.[oald]
;भगौने में पानी में बुलबुले उठने शुरु हो रहे थे
(defrule bubble6
(declare (salience 5000))
(id-root ?id bubble)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?kri ?id)
(kriyA-subject  ?kri ?sub)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bulabule_uTa))
(assert (kriyA_id-subject_viBakwi ?kri meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bubble.clp 	bubble6   "  ?id "  bulabule_uTa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* " bubble.clp	bubble6   "  ?kri " meM )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14-Feb-2014
;Add the white wine and let it bubble up.[oald]
;सफेद वाइन मिलाओ और इसमें बुलबुले उठने दो
(defrule bubble7
(declare (salience 5000))
(id-root ?id bubble)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulabule_uTa))
(assert (kriyA_id-subject_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bubble.clp	bubble7  "  ?id "  " ?id1 "  bulabule_uTa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* " bubble.clp	bubble7   "  ?id " meM )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14-Feb-2014
;I could hear the soup bubbling away.[oald]
;मैं शोरबे का खदबदाना सुन सका
(defrule bubble8
(declare (salience 5000))
(id-root ?id bubble)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 away)
(viSeRya-kqxanwa_viSeRaNa  ?id2 ?id)
(kriyA-object  ?kri ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KaxabaxA))
(assert (kriyA_id-object_viBakwi ?kri kA))
(assert (make_verbal_noun ?id))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bubble.clp	bubble8  "  ?id "  " ?id1 "  KaxabaxA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " bubble.clp	bubble8   "  ?kri "  kA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  bubble.clp	bubble8   " ?id " )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14-Feb-2014
;She was bubbling over with excitement.[oald]
;वह उत्साह से भरी हुयी थी
(defrule bubble9
(declare (salience 5000))
(id-root ?id bubble)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 over)
(kriyA-with_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bubble.clp	bubble9  "  ?id "  " ?id1 "  Bara )" crlf)
)
)

;****************************DEFAULT RULE****************************

(defrule bubble1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bubble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bubble.clp 	bubble1   "  ?id "  asAra )" crlf))
)



;Life is a bubble that can burst any day.
(defrule bubble2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bubble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bulabulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bubble.clp 	bubble2   "  ?id "  bulabulA )" crlf))
)


;The lava bubbled in the crater.
(defrule bubble3
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bubble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaxabaxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bubble.clp 	bubble3   "  ?id "  KaxabaxA )" crlf))
)


;"bubble","Adj","1.asAra"

;"bubble","N","1.bulabulA"
;Life is a bubble that can burst any day.
;

;"bubble","VI","1.KaxabaxAnA/bulabule_uTanA"
;The lava bubbled in the crater.
;
