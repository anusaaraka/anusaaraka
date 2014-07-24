
;$$$ Modified by Anita (change the meaning from 'xiKAnevAlA' to ' aMgapraxarRaka' & added the relation (subject-subject_samAnAXikaraNa)
;If clothes are revealing, they show a lot of your body. [cambridge dictionary]
;यदि कपड़े अंगप्रदर्शक हों तो वे शरीर का अच्छा खासा हिस्सा दिखाएंगे 
(defrule reveal0
;(declare (salience 4800))
(id-root ?id reveal)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id revealing )
(subject-subject_samAnAXikaraNa  ? ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aMgapraxarRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reveal.clp  	reveal0   "  ?id "  aMgaprxarRaka )" crlf))
)

;"revealing","Adj","1.xiKAnevAlA"
;This document is extremely revealing.
;Mostly she wears revealing dresses.
;
;
;@@@ Added by Anita-17.12.2013
;It was revealed in this morning's papers that the couple intend to marry. [cambridge dictionary]
;सुबह के अखबार में खुलासा किया गया कि उस युगल  का विवाह करने का इरादा है ।
;Details of the murder were revealed by the local paper. [oxford dictionary]
;स्थानीय समाचार-पत्र द्वारा हत्या की तफ़सील का खुलासा किया गया ।
(defrule reveal2
(declare (salience 5060))
(id-root ?id reveal)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 paper)
(or(kriyA-in_saMbanXI  ?id ?id1)(kriyA-by_saMbanXI  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KulAsA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reveal.clp 	reveal2 "  ?id "  KulAsA_kara )" crlf))
)

;@@@ Added by Anita-17.12.2013
;His shirt came up at the back, revealing an expanse of white skin. [cambridge dictionary]
;उसकी कमीज़ पीछे से उठ गई, जिससे उसकी सफेद त्वचा का बड़ा भाग दिखने लगा ।
;He laughed, revealing a line of white teeth. [oxford dictionary]
;वह हँसा ,जिससे उसके सफेद दाँतों की लड़ी दिखी ।
;She crouched in the dark, too frightened to reveal herself. [oxford dictionary]
;अपने आपको दिखाने मे अत्यन्त भयभीत वह अंधेरे में दुबकी बैठी रही ।
(defrule reveal3
(declare (salience 5000))
(id-root ?id reveal)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 expanse|line|crouch)
(or(kriyA-object  ?id ?id1)(kriyA-kqxanwa_karma  ? ?id)(kriyA-kriyArWa_kriyA  ?id1 ?id))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reveal.clp 	reveal3 "  ?id ?id1"  xiKa)" crlf))
)
;@@@ Added by Anita-17.12 2013
;The doctors did not reveal the truth to him. [oxford dictionary]
;डॉक्टरों ने उसे सच्चाई नहीं बताई ।
;dAktaroM ne usako saccAI nahIM bawAI WI. (verified sentence )
;Salted peanuts were recently revealed as the nation's favourite snack. [oxford dictionary]
;हाल ही में ऐसा बताया गया है कि नमकीन मूँगफली देश की सबसे मनपसन्द अल्पाहार है ।
;namaka mUzgaPalI rARtra ke priya alpAhAra ke jEsA hAla mez bawAe gaye We. (can be verified sentence )
;The report reveals (that) the company made a loss of £20 million last year. [oxford dictionary]
;रिपोर्ट बताती है कि पिछले साल कंपनी को बीस मिलियन डॉलर का घाटा हुआ ।
;It was revealed that important evidence had been suppressed. [oxford dictionary]
;ऐसा बताया गया है कि महत्वपूर्ण साक्ष्य छुपाया गया था ।
;Officers could not reveal how he died. [oxford dictionary]
;अधिकारी ये नहीं बता सके कि वह कैसे मरा ।
;aXikArI nahIM_bawA sake kEse vaha marA. (verified sentence )
(defrule reveal4
(declare (salience 5050))
(id-root ?id reveal)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-to_saMbanXI  ?id ?)(kriyA-as_saMbanXI  ?id ?)(kriyA-vAkyakarma  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reveal.clp 	reveal4 "  ?id "  bawA)" crlf))
)
;@@@ Added by Anita-17.12.2013
;X-rays revealed a fracture. [oxford dictionary]
;एक्स-रे ने  हड्डी का टूटना दर्शाया ।
(defrule reveal5
(declare (salience 4100))
(id-root ?id reveal)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-word ?id1  x-rays)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reveal.clp 	reveal5 "  ?id "  xarRA)" crlf))
)
;@@@ Added by Anita-17.12.2013
;Her expression revealed nothing. [oxford dictionary]
;उसके हाव भाव से कुछ भी प्रकट नहीं हुआ ।
;The door opened to reveal a cosy little room. [oxford dictionary]
;दरवाजा खुला और एक छोटा सा प्यारा कमरा प्रकट हुआ ।
(defrule reveal6
(declare (salience 4900))
(id-root ?id reveal)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 expression)
(id-root ?id2 her|his)
(and(kriyA-subject  ?id ?id1)(viSeRya-RaRTI_viSeRaNa  ?id1 ?id2))
(kriyA-kriyArWa_kriyA  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakata_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reveal.clp 	reveal6   "  ?id "  prakata_ho )" crlf))
)
;@@@ Added by Anita-18.12.2013
;Her evidence revealed the accused to be innocent. [old clp sentence]
;उसके सबूत ने अभियुक्त को निर्दोष साबित किया ।
(defrule reveal7
(declare (salience 5200))
(id-root ?id reveal)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 accused)
(id-root ?id2 innocent)
(and(kriyA-object  ?id ?id1)(saMjFA-to_kqxanwa  ?id1 ?id2))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAbiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reveal.clp 	reveal7   "  ?id "  sAbiwa_kara )" crlf))
)
;#############################default-rule#################################
;"reveal","V","1.prakata karanA"
;She can not reveal her secret to any one.
(defrule reveal-default-rule
(id-root ?id reveal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakata_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reveal.clp 	reveal-default-rule   "  ?id "  prakata_kara )" crlf))
)
