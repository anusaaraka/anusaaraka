;@@@ Added by Anita-17.4.2014
;That reminds me, I must get some cash. [oxford learner's dictionary]
;उससे मुझे याद आया , कि मुझे कुछ नगद ले आना चाहिए ।
(defrule remind0
(declare (salience 1000))
(id-root ?id remind)
?mng <-(meaning_to_be_decided ?id)
(kriyA-prayojya_karwA  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remind.clp 	remind0   "  ?id " yAxa_A )" crlf))
)

;@@@ Added by Anita-17.4.2014
;Passengers are reminded (that) no smoking is allowed on this train. [oxford learner's dictionary]
;यात्रियों को चेताया गया है कि रेल गाड़ी पर धूम्रपान की अनुमति नहीं है ।
(defrule remind1
(declare (salience 2000))
(id-root ?id remind)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 passenger)
(kriyA-subject  ?id ?id1)
(kriyA-vAkyakarma  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cewAyA))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remind.clp 	remind1   "  ?id " cewAyA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  remind.clp  remind1   "  ?id " ko )" crlf))
)

;#################################default-rule#######################################
;@@@ Added by Anita-17.4.2014
;Could you remind Paul about dinner on Saturday? [cambridge dictionary]
;क्या आप पॉल को शनिवार के रात के भोजन के बारे में याद दिला सके ।
;Please remind me to post this letter. [cambridge dictionary]
;कृपया मुझे इस पत्र को डाक से भेजने के लिए याद दिलाइए ।
;I called Jane and reminded her (that) the conference had been cancelled. [cambridge dictionary]
; मैंने जैनी को याद दिलाने के लिए फोन किया कि कॉन्फ्रेन्स रद्द कर दी गई ।
;Your hair and eyes remind me of your mother. [cambridge dictionary]
;आपके बाल और आँखें आपकी माँ की याद दिलाते हैं ।
;I am sorry, I have forgotten your name. Can you remind me? [oxford learner's dictionary]
; मुझे दुख है कि मैं आपका नाम भूल गया हूँ। क्या आप मुझे याद दिला सकते हैं ?
;You need to finish that essay. Do not remind me. [oxford learner's dictionary]
;आपको वह निबन्ध पूर्ण करने की आवश्यकता है । मुझे याद मत दिलाइए ।
;Do not forget the camera. Remind me about it nearer the time. [oxford learner's dictionary]
;कैमरा मत भूल जाना । समय निकट आने पर मुझे याद दिलाइए ।
;Remind me to phone Alan before I go out. [oxford learner's dictionary]
;इससे पहले मैं बाहर जाऊँ मुझे एलेन को फोन करने के लिए मुझे याद दिलाना ।
;Can someone remind me what I should do next? 
;क्या कोई मुझे याद दिला सकता है कि अगला क्या करना चाहिए ।
;'You had an accident,' he reminded her. 
;'आपकी एक दुर्घटना हुई थी ,' ऐसा उसने उसे याद दिलाया ।

(defrule remind_default-rule
(declare (salience 0))
(id-root ?id remind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_xilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remind.clp 	remind_default-rule   "  ?id " yAxa_xilA )" crlf))
)
