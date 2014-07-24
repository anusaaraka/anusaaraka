;@@@ Added by Prachi Rathore[03-12-13]
;They ventured nervously into the water.[OALD]
;उन्होंने  घबराते हुए पानी के अंदर जाने का साहस किया . 
(defrule venture2
(declare (salience 5000))
(id-root ?id venture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-kriyA_viSeRaNa  ?id ?)(kriyA-into_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAne_kA_sAhasa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  venture.clp 	venture2   "  ?id "  jAne_kA_sAhasa_kara )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;As soon as it was light the chowkidar lit a fire, but the cold prevented the children from venturing outdoors.[gyannidhi]
;सुबह हुई और डाक-बंगले के चौकीदार ने आग जला दी,परन्तु ठण्ड ने गाँव का  बाहर जाने से बच्चों को रोका . 
(defrule venture3
(declare (salience 5000))
(id-root ?id venture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ? ?id)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  venture.clp 	venture3   "  ?id "  jA )" crlf))
)


;;@@@   ---Added by Prachi Rathore[12-12-13]
;Our workers are so frightened that they refuse to [venture out] at night.[gyannidhi]
;हमारे मजदूर तो इतने डर गए थे कि वे रात में अपने घरों से बाहर निकलने का जोखिम नहीं उठाते थे।
(defrule venture4
(declare (salience 5000))
(id-root ?id venture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikalane_kA_joKima_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " venture.clp	venture4  "  ?id "  " ?id1 "  bAhara_nikalane_kA_joKima_le  )" crlf)))


;@@@ Added by Prachi Rathore[28-2-14]
;There are many joint ventures between American and Japanese companies.[cambridge]
;अमरीकी और जापानी कम्पनियों के बीच बहुत सारे साझे के उपक्रम हैं . 
(defrule venture5
(declare (salience 5050))
(id-root ?id venture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upakrama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  venture.clp 	venture5   "  ?id "  upakrama )" crlf))
)


;@@@ Added by Prachi Rathore[28-2-14]
;It was wrong to venture his financial security on such a risky deal. [oald]
;ऐसी खतरनाक डील पर उसकी आर्थिक सुरक्षा दाँव पर लगाना गलत था . 
(defrule venture6
(declare (salience 5050))
(id-root ?id venture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(saMjFA-to_kqxanwa  ?id1 ?id)
(kriyA-object  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzva_para_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  venture.clp 	venture6   "  ?id "  xAzva_para_lagA )" crlf))
)

;@@@ Added by Prachi Rathore[28-2-14]
; He ventured that the data might be flawed. [oald]
;उसने साहस करके कहा कि डेटा दोषयुक्त हो सकते हैं . 
(defrule venture7
(declare (salience 5050))
(id-root ?id venture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root =(+ ?id 1) that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAhasa_karake_kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  venture.clp 	venture7   "  ?id "  sAhasa_karake_kaha )" crlf))
)
;xxxxxxxxxxxx Default rules xxxxxxxxxxxxxxxxxxxxxxx
(defrule venture0
(declare (salience 5000))
(id-root ?id venture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAhasika_kArya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  venture.clp 	venture0   "  ?id "  sAhasika_kArya )" crlf))
)

;"venture","N","1.sAhasika_kArya"
;To climb the peak during the winter months was a tough venture.
;
(defrule venture1
(declare (salience 4900))
(id-root ?id venture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAhasa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  venture.clp 	venture1   "  ?id "  sAhasa_kara )" crlf))
)

;"venture","VTI","1.sAhasa_karanA"
;The students ventured into the high-sea
;He ventured his opinion in the meeting
;
