;@@@ Added by Anita 18.3.2014
;I can recommend the chicken in mushroom sauce - it's delicious. [cambridge dictionary]
;मैं मशरूम सॉस में चिकन की सिफारिश कर सकता हूँ- यह स्वादिष्ट है ।
(defrule recommend0
(declare (salience 4800))
(id-root ?id recommend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?)
(kriyA-vAkyakarma  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id siPAriSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recommend.clp 	recommend0   "  ?id " siPAriSa_kara )" crlf))
)

;---------------------- Default rule -----------------------------

;@@@ Added by Anita 20.3.2014
;The SI with standard scheme of symbols units and abbreviations was developed and recommended by ;General Conference on Weights and Measures in 1971 for international usage in scientific technical ;industrial and commercial work. [By mail}
;एस आई प्रतीकों, मात्रकों और उनके सङ्केताक्षरों की योजना 1971 में, मापतोल के महा सम्मेलन द्वारा विकसित कर, वैज्ञानिक, तकनीकी, ;औद्योगिक एवं व्यापारिक कार्यों में अन्तर्राष्ट्रीय स्तर पर उपयोग हेतु अनुमोदित की गई ।
(defrule recommend1
(id-root ?id recommend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumoxiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recommend.clp 	recommend1   "  ?id " anumoxiwa_kara )" crlf))
)

;---------------------------

;She has been recommended for promotion. [cambridge dictionary]
;पदोन्नति के लिए उसकी सिफारिश की गई है ।
;The headmistress agreed to recommend the teachers' proposals to the school governors. [+ (that)] [cambridge dictionary]
;स्कूल की संचालिका स्कूल राज्यपालों से शिक्षकों के प्रस्तावों की सिफारिश करने पर सहमत हुए.
;The doctor recommended that I take more exercise. [+ -ing verb] [cambridge dictionary]
;डॉक्टर ने मुझे सलाह दी कि और अधिक व्यायाम करूँ ।
;I recommend writing your feelings down on paper. [cambridge dictionary]
;मैं कागज पर अपनी भावनाओं को नीचे लिखने की सलाह देते हैं.
;The city has little to recommend it .[cambridge dictionary]
;शहर को इसके बारे में बताने के लिए बहुत थोड़ा  हैं ।
