
;@@@ Added by Anita-16.4.2014
;For him, football is an absolute religion.[oxford learner's dictionary]
;फुटबॉल उसके लिए पूर्णतया जीवन का अंग  है ।
;Football is a religion for these people. [cambridge dictionary]
;फुटबॉल इन लोगों के लिए जीवन का अंग  है ।
;All citizens would be considered equal no matter their sex, race,  religion or ethnicity. [Dante dictionary]
;सभी नागरिक समान समझे जाएंगे चाहे वे किसी भी लिंग , वर्ग, धर्म या जाति के हों ।
;Islam in the official religion but all other  religions are freely practised. [Dante dictionary]
;इस्लाम सरकारी धर्म है लेकिन अन्य धर्मों का पालन स्वतन्त्र रूप से कर सकते हैं ।
(defrule religion0
(declare (salience 1000))
(id-root ?id religion)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIvana_kA_aMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  religion.clp 	religion0  "  ?id " jIvana_kA_aMga )" crlf))
)
;@@@ Added by Anita-16.4.2014
;Paying money is against his  religion, he says. [Dante dictionary]
;पैसों का भुगतान करना उसके ईमान के खिलाफ है ।
(defrule religion1
(declare (salience 3000))
(id-root ?id religion)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 money)
(kriyA-subject  ?kri ?id1)
(kriyA-against_saMbanXI  ?kri ?id)
;(viSeRya-RaRTI_viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ImAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  religion.clp 	religion1  "  ?id " ImAna)" crlf))
)
;@@@ Added by Anita-16.4.2014
;Science is their  religion, no greater explanation exists for them. [Dante dictionary]
;विज्ञान उनका परम धर्म है , उनके लिए इस बारे में कोई बड़ा स्पष्टीकरण नहीं है ।
(defrule religion2
(declare (salience 4000))
(id-root ?id religion)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 science)
(kriyA-subject  ?kri ?id1)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parama_Xarma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  religion.clp 	religion2  "  ?id " parama_Xarama )" crlf))
)

;@@@ Added by Anita-16.4.2014
;Please don't let him tell me he has got  religion! [Dante dictionary]
; कृपया मुझे ये न कहें कि उसे धर्म में विश्वास हो गया है ।
(defrule religion3
(declare (salience 4500))
(id-root ?id religion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) verb)
(id-root =(- ?id 1) get)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1)  Xarma_meM_viSvAsa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " religion.clp  religion3 "  ?id " "(- ?id 1)" Xarma_meM_viSvAsa_ho)" crlf))
)

;##################################Default-rule######################################

;@@@ Added by Anita-16.4.2014
;It is easy to see how TV could be supplying society with some of the things we lost by losing our  religion. [Dante dictionary]
;ये देखना आसान हैं कि कैसे टेलिविज़न समाज को वो चीज़ें मुहैय्या करा सकेगा जिन्हें हम अपना धर्म खोने की वजह से खो चुके हैं ।
;Is there always a conflict between science and religion? [oxford learner's dictionary]
;क्या विज्ञान और धर्म के बीच हमेशा विरोध रहता है ? 
;Christianity, Islam and other world religions. [oxford learner's dictionary]
;ईसाई धर्म,इस्लाम और संसार के अन्य धर्म ।
;Sometimes there is conflict between science and  religion. [Dante dictionary]
; कभी-कभी विज्ञान और धर्म के बीच विरोध होता है ।
(defrule religion_default-rule
(declare (salience 0))
(id-root ?id religion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xarma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  religion.clp 	religion_default-rule   "  ?id " Xarma )" crlf))
)
