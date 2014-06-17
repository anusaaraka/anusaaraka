;@@@ Added by Anita--28.2.2014
;Fortunately, there is been a revolution in optical microscopy techniques over the last five years, and now we can see inside them with pretty good resolution. [Gyan-Nidhi]
;सौभाग्य से, पिछले पांच वर्षों में ऑप्टिकल माइक्रोस्कोपी तकनीक में एक क्रांति हुई है, और अब हम उनके अंदर  काफी अच्छे विभेदन के ;साथ देख सकते हैं ।
;The resolution of such an electron microscope is limited finally by the fact that electrons can also behave as waves.
;इस प्रकार के इलेक्ट्रॉन - सूक्ष्मदर्शी का विभेदन भी अन्ततः इसी तथ्य द्वारा सीमित होता है कि इलेक्ट्रॉन भी तरङ्गों की तरह व्यवहार कर सकते हैं ।
(defrule resolution0
(declare (salience 4950))
(id-root ?id resolution)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-with_saMbanXI  ? ?id)(viSeRya-of_saMbanXI  ?id ?))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBexana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resolution.clp 	resolution0   "  ?id "  viBexana )" crlf))
)

;@@@ Added by Anita--1.3.2014
;The government is pressing for an early resolution of the dispute. [cambridge dictionary]
;सरकार विवाद के शीघ्र समाधान के लिए दबाव डाल रही है ।
(defrule resolution1
(declare (salience 4875))
(id-root ?id resolution)
?mng <-(meaning_to_be_decided ?id)
(id-root ?kri press)
(kriyA-for_saMbanXI  ?kri ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAXAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resolution.clp 	resolution1   "  ?id "  samAXAna)" crlf))
)


;@@@ Added by Anita--1.3.2014
;I made a resolution to give up chocolate. [cambridge dictionary]
;मैंने चॉकलेट छोड़ने का दृढ़ निश्चय किया है ।
(defrule resolution2
(declare (salience 4850))
(id-root ?id resolution)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa_niScaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resolution.clp 	resolution2   "  ?id "  xqDZa_niScaya)" crlf))
)


;@@@ Added by Anita--1.3.2014
;The United Nations passed a resolution to increase aid to the Third World. [cambridge dictionary]
;संयुक्त राष्ट्र ने तीसरी दुनिया की सहायता बढ़ाने के लिए एक प्रस्ताव पारित किया ।
(defrule resolution3
(declare (salience 4900))
(id-root ?id resolution)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(id-root ?kri pass)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resolution.clp 	resolution3   "  ?id "  praswAva )" crlf))
)

;####################################defaultrule######################################
;@@@ Added by Anita 27.3.2014
;He will not deviate from his resolution.
;वह अपने संकल्प से नहीं हटेगा .
(defrule resolution_default-rule
(id-root ?id resolution)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkalpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resolution.clp       resolution_default-rule   "  ?id "  saMkalpa )" crlf))
)

