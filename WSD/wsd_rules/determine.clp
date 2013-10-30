
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

;Added by Pramila(Banasthali University) on 25-10-2013
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


;Added by Pramila(Banasthali University) on 26-10-2-2013
;They dtermined to start early.
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

;--------------------------------------default rules--------------------------------------------

(defrule determine4
(declare (salience 4000))  ;Modified by Pramila(banasthali University)on 21-10-2013
(id-root ?id determine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirXAriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  determine.clp 	determine4   "  ?id "  nirXAriwa_kara )" crlf))
)

;default_sense && category=verb	nirXAraNa_karanA/niScaya_kara	0
;"determine","VT","1.nirXAraNa_karanA/niScaya_karanA"
;Examination marks can determine your career.
;
;


