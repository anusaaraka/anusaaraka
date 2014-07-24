
;@@@ Added by Anita--21.3.2014
;These can arise due to random and unpredictable fluctuations in experimental conditions e.g. unpredictable fluctuations in temperature voltage supply mechanical vibrations of experimental set-ups etc personal unbiased errors by the observer taking readings etc . [ncert]
;यादृच्छिक त्रुटियाँ, प्रायोगिक अवस्थाओं (ताप, वोल्टता प्रदाय, प्रयोग व्यवस्था के यान्त्रिक कम्पन आदि) में होने वाले यादृच्छिक तथा अननुमेय उतार - चढाव के कारण तथा पाठ्याङ्क के समय प्रेक्षक द्वारा की गई (पूर्वाग्रह रहित) व्यक्तिगत त्रुटियों आदि के कारण होती हैं..
(defrule random0
(declare (salience 5000))
(id-root ?id random)
?mng <-(meaning_to_be_decided ?id)
(conjunction-components  ? ?id ?)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxqcCika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  random.clp 	random0   "  ?id "  yAxqCika )" crlf))
)

;@@@ Added by Anita--3.4.2014
;Some random guy gave me a hundred bucks. [oxford learner's dictionary]
;किसी अनजान व्यक्ति ने मुझे सौ रुपये दिए ।
(defrule random1
(declare (salience 4900))
(id-root ?id random)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anjAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  random.clp 	random1   "  ?id "  anjAna )" crlf))
)

;@@@ Added by Anita--3.4.2014
;He grabbed a pair of random jeans and an old red shirt. [oxford learner's dictionary]
;वह एक बेतरतीब जीन्स और एक पुरानी लाल कमीज़ लाया ।
(defrule random2
(declare (salience 4950))
(id-root ?id random)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 jeans|pant|shirt)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bewarawIba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  random.clp 	random2   "  ?id "  bewarawIba )" crlf))
)

;@@@ Added by Anita--3.4.2014
;The random killing of innocent people . [oxford learner's dictionary]
;निर्दोष लोगों की निरुद्देश्य हत्या ।
(defrule random3
(declare (salience 5100))
(id-root ?id random)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 killing)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niruxxesSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  random.clp 	random3   "  ?id "  niruxxesSya )" crlf))
)
;###################################default-rule#########################
;@@@ Added by Anita-3.4.2014
;The information is processed in a random order.
; सूचना अनियमित क्रम में संसाधित की गई है ।
(defrule random_default-rule
(declare (salience 0))
(id-root ?id random)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aniyamiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  random.clp 	random_default-rule   "  ?id "  aniyamiwa )" crlf))
)
