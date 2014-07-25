;@@@ Added by Anita--21.2.2014 
;I hadn't seen her for 20 years, but I recognized her immediately. [cambridge.;org/dictionary/learner-;english] [verified-sentence)
;मैं उससे २० वर्षों तक नहीं मिला था , पर मैंने तत्काल उसे पहचान लिया ।
(defrule recognize0
(declare (salience 15))
(id-root ?id recognize)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahacAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recognize.clp 	recognize0   "?id "  pahacAna_le )" crlf))
)

;@@@ Added by Anita--21.2.2014              
;Do you recognize this song? [cambridge.;org/dictionary/learner-;english]
;क्या तुम यह गाना जानते हो ?
(defrule recognize1
(declare (salience 10))
(id-root ?id recognize)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 song)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recognize.clp 	recognize1   "?id "  jAna )" crlf))
)

;@@@ Added by Anita--21.2.2014
;The international community has refused to recognize  the newly independent nation state. ;[cambridge.;org/dictionary/learner-;english]
;अंतर्राष्ट्रीय समुदाय ने नये स्वतंत्र देश को क़ानूनी रूप से  मान्यता देनें से इंकार कर दिया ।
;(defrule recognize2
;(declare (salience 20))
;(id-root ?id recognize)
;?mng <-(meaning_to_be_decided ?id)
;(kriyA-object  ?id ?)
;;(kriyA-subject  ?id ?)
;(kriyA-kriyArWa_kriyA  ? ?id)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id mAnyawA_xe))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recognize.clp 	recognize2   "?id "  mAnyawA_xe )" crlf))
;)

;@@@ by Anita-- 21.2.2014
;The languages recognized as principal languages were Bengali Hindi Urdu and Assamese. [By mail]
;प्रमुख भाषाओं के रूप में बांगला, हिन्दी, उर्दू और असमिया को मान्यता दी गई ।
;pramuKa BARAoM ke jEsA mAnyawA xI huIM BARAez bangAlI hiMxI urxU Ora Assamese WIM. [no. 3 used parser output]
(defrule recognize3
(declare (salience 25))
(id-root ?id recognize)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 language)
(kriyA-as_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnyawA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recognize.clp         recognize3   "  ?id "  mAnyawA_xe )" crlf))
)
;
;-----------------------Default-------------------------
;@@@ Added by Anita--21.2.2014
;He sadly recognized that he would die childless. [cambridge.;org/dictionary/learner-;english]
;उसने दुखी मन से यह स्वीकार कर लिया कि वह निसंतान मर जायेगा .
(defrule recognize2
(id-root ?id recognize)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recognize.clp 	recognize3   "?id "  svIkAra_kara )" crlf))
)
