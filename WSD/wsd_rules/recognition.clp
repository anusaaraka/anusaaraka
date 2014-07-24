
;@@@ Added by Anita-9.4.2014
;Ellen gained recognition for her outstanding work. [cambridge dictionary]
;एलेन ने अपने उत्कृष्ट काम के लिए सम्मान प्राप्त किया । 
;He was given a medal in recognition of his bravery. [verified sentence]
;उसको उसके साहस के सम्मान में एक पदक दिया गया ।
(defrule recognition1
(declare (salience 3500))
(id-root ?id recognition)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 bravery)
(or(kriyA-object  ? ?id)(viSeRya-of_saMbanXI  ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recognition.clp 	recognition1   "  ?id "  sammAna )" crlf))
)

;@@@ Added by Anita-9.4.2014
;I waved at her, but she showed no sign of recognition. [cambridge dictionary]
;मैंने उसे हाथ हिलाया, लेकिन उसने पहचानने के कोई संकेत नहीं दिखाए ।
(defrule recognition2
(declare (salience 3000))
(id-root ?id recognition)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahacAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recognition.clp 	recognition2   "  ?id " pahacAna )" crlf))
)

;@@@ Added by Anita-10.4.2014
;I found the more I put up my defense, the more they were  nodding their heads in recognition. [Dante ;Dictionary ]
; मैंने पाया कि जितना मैंने अपने बचाव में रखा उतना अधिक वे स्वीकृति में सिर हिला रहे थे ।
(defrule recognition3
(declare (salience 4500))
(id-root ?id recognition)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?kri ?id)
(id-root ?kri nod)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkqwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recognition.clp 	recognition3   "  ?id " svIkqwi )" crlf))
)

;###############################default-rule##########################

;@@@ Added by Anita-9.4.2014
;There is a growing recognition of the scale of the problem. [cambridge dictionary]
;समस्या के पैमाने की बढ़ती मान्यता है.
;There is a general recognition that she's the best person for the job.
;एक सामान्य मान्यता है कि वह इस काम के लिए सर्वोत्तम व्यक्ति है । 
(defrule recognition_default-rule
(declare (salience 1000))
(id-root ?id recognition)
?mng <-(meaning_to_be_decided ?id)
;(viSeRya-viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnyawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recognition.clp    recognition_default-rule   "  ?id "  mAnyawA )" crlf))
)