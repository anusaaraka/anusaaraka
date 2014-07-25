
(defrule determine0
(declare (salience 5000))
(id-root ?id determine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id determined )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kqwasaMkalpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  determine.clp  	determine0   "  ?id "  kqwasaMkalpa )" crlf))
)

;"determined","Adj","1.kqwasaMkalpa"
;--"2.xqDZa"
;It was tough for the army to fight a determined enemy.
;

;We can use Coulomb's law and the superposition principle to determine this field at a point P denoted by
; position vector r.
;बिन्दु p , जिसे स्थिति सदिश r द्वारा निर्दिष्ट किया जाता है , पर विद्युत क्षेत्र को निर्धारित करने के लिए हम कूलॉम नियम तथा अध्यारोपण के सिद्धान्त का उपयोग करते हैं .
;E is a vector quantity that varies from one point to another point in space and is determined from the positions 
;of the source charges.
;e एक सदिश राशि है जिसका मान दिक्स्थान में एक बिन्दु से दूसरे बिन्दु पर जाने पर परिवर्तित हो जाता है तथा यह स्रोत आवेशों की स्थितियों से निर्धारित होता है . 

;Added by Pramila(Banasthali University) on 21-10-2013
(defrule determine1
(declare (salience 5000))
(id-root ?id determine)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-from_saMbanXI  ?id ?id1)(to-infinitive  ?id1 ?id))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirXAriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  determine.clp 	determine1   "  ?id "  nirXAriwa_kara )" crlf))
)

;added by Pramila(Banasthali University) on 25-10-2013
;Upbringing plays an important part in determining a person's character.
;pAlaNa-poRaNa vyakwi kA cariwra niSciwa karane meM mahawwavapurNa BUmikA niBAwA hE.

;The court determined that the defendent should pay the legal costs.
;nyAyAlaya ne niSciwa kiyA ki prAwyarWI ko kAnUnI kara cukAne padeMge.

(defrule determine2
(declare (salience 5000))
(id-root ?id determine)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-in_saMbanXI  ?id1 ?id)(kriyA-vAkyakarma  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  determine.clp 	determine2   "  ?id "  niSciwa_kara )" crlf))
)


;Added by Pramila(Banasthali University) on 26-10-2013
;They determined to start early.
;unhoneM jalxI jAne ka xqDa niScaya kiyA.
(defrule determine3
(declare (salience 5000))
(id-root ?id determine)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(to-infinitive  ?id2 ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDa_niScaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  determine.clp 	determine3   "  ?id "  xqDa_niScaya_kara )" crlf))
)

;@@@ Added by Pramila Banasthali 13-02-2014
;He is determined in his object.  ;shiksharthi
;वह अपने उद्देश्य में दृढ़ है.
(defrule determine4
(declare (salience 4900))  
(id-word ?id determined)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xqDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  determine.clp 	determine4   "  ?id "  xqDa )" crlf))
)

;@@@ Added by Pramila Banasthali 07-03-2014
;In one experiment using a measuring instrument of resolution 0.1 cm the measured value is found to be 3.5 cm while in another 
;experiment using a measuring device of greater resolution say 0.01 cm the length is determined to be 3.38 cm.   ;ncert
;.एक प्रयोग में 0.1 cm विभेदन का मापक - यन्त्र प्रयोग करके इसका मान 3.5 cm मापा गया, जबकि, दूसरे प्रयोग में अधिक विभेदन वाला (माना 0.01 cm ) मापक यन्त्र प्रयोग करके उसी 
;लम्बाई को 3.38 cm मापा गया.
(defrule determine5
(declare (salience 5000))  
(id-word ?id determined)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kqxanwa_karma  ?id ?id1)
(id-word ?id1 be)
(kriyA-karma  ?id ?id2)
(id-word ?id2 length|height|width)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " determine.clp 	determine5  "  ?id "  "  ?id1  "  mApa )" crlf))
)
;--------------------------------------default rules--------------------------------------------

(defrule determine6
(declare (salience 4000))  ;Modified by Pramila(banasthali University)on 21-10-2013
(id-root ?id determine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirXAriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  determine.clp 	determine6   "  ?id "  nirXAriwa_kara )" crlf))
)

;default_sense && category=verb	nirXAraNa_karanA/niScaya_kara	0
;"determine","VT","1.nirXAraNa_karanA/niScaya_karanA"
;Examination marks can determine your career.
;
;


