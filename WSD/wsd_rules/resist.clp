

;@@@ Added by Anita-28.4.2014
;The bad guys can't  resist truth, justice, compassion and love forever. [Dante dictionary]
;बुरे लोग हमेशा सत्य , न्याय, दया और प्रेम को सहन नहीँ कर पाते हैं ।
(defrule resist0
(declare (salience 2900))
(id-root ?id resist)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 guy)
(id-root ?id2 bad)
(kriyA-subject  ?id ?id1)
(viSeRya-viSeRaNa  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resist.clp 	resist0   "  ?id "   sahana_kara)" crlf))
)

;@@@ Added by Anita-26.4.2014
;He tried to run away from the police and was charged with resisting arrest. [cambridge dictionary]
;उसने पुलिस से भागने की कोशिश की और गिरफ्तारी के विरोध करने का आरोप लगाया गया था ।
;I can never resist temptation chocolate to laugh. [cambridge dictionary]
;मैं हँसने के लिए चॉकलेट के प्रलोभन का विरोध नहीं कर सकती ।
;He tried to pin me down, but I resisted. [oxford learner's dictionary]
;उसने मुझे नीचे दबाने की कोशिश की, लेकिन मैंने विरोध किया ।
(defrule resist1
(declare (salience 2700))
(id-root ?id resist)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-with_saMbanXI  ?kri ?id)(kriyA-kriyArWa_kriyA  ?id ?)(kriyA-kriyA_viSeRaNa  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viroXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resist.clp 	resist1   "  ?id "   viroXa_kara)" crlf))
)


;@@@ Added by Anita-26.4.2014
;The new hybrid crops are much better at resisting disease. [cambridge dictionary]
;नई संकर फसलें  बीमारी का निवारण करने पर बेहतर  हैं ।
(defrule resist2
(declare (salience 2000))
(id-root ?id resist)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-at_saMbanXI  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nivAraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resist.clp 	resist2   "  ?id "   nivAraNa_kara)" crlf))
)

;@@@ Added by Anita-26.4.2014
;She couldn't resist laughing at him in those clothes. [cambridge dictionary]
;वह इन कपड़ों में उस पर हँसने से रोक न सकी ।
;I believe we should resist calls for tighter controls. [oxford learner's dictionary]
;मुझे लगता है कि हमें सख्त नियंत्रण के लिए कॉलों पर रोक लगानी चाहिए ।
;Eric couldn't resist a smile when she finally agreed.[oxford learner's dictionary]
;एरिक मुस्कान रोक नहीं सका जब उसने अंततः  सहमति व्यक्त की ।
;He couldn't resist showing off his new car. [oxford learner's dictionary]
;वह अपनी नई कार के दिखावे को रोक नहीं सका ।
(defrule resist3
(declare (salience 2800))
(id-root ?id resist)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kqxanwa_karma  ?id ?)(kriyA-vAkyakarma  ? ?id)(kriyA-kriyA_niReXaka  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resist.clp 	resist3   "  ?id "   roka)" crlf))
)


;@@@ Added by Anita-26.4.2014
;The bank strongly resisted cutting interest rates. [oxford learner's dictionary]
;बैंक ने दृढ़ता से ब्याज दरों में कटौती पर रोक लगाई ।
(defrule resist4
(declare (salience 3000))
(id-root ?id resist)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 bank)
(kriyA-subject  ?id ?id1)
(viSeRya-det_viSeRaNa  ?id1 ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resist.clp 	resist4   "  ?id "   roka_lagA)" crlf))
)


;@@@ Added by Anita-26.4.2014
;A healthy diet should help your body resist infection. [oxford learner's dictionary]
;एक एक स्वस्थ आहार को आपके शरीर के संक्रमण से लड़ने में मदद करनी चाहिए ।
(defrule resist5
(declare (salience 4000))
(id-root ?id resist)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 body)
(kriyA-subject  ?id ?id1)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladzane_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resist.clp 	resist5   "  ?id "   ladzane_meM)" crlf))
)

;@@@ Added by Anita-26.4.2014
;This new paint is designed to resist heat. [oxford learner's dictionary]
;यह नया रंग गर्मी पर क़ाबू पाने के लिए बनाया गया है ।
(defrule resist6
(declare (salience 5000))
(id-root ?id resist)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 heat)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para_kAbU_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resist.clp 	resist6   "  ?id "   para_kAbU_pA)" crlf))
)
;###############################default-rule##############################


;@@@ Added by Anita-26.4.2014
;The soldiers resisted (the enemy attacks) for two days. [cambridge dictionary]
;सैनिकों ने दो दिनों तक  प्रतिरोध किया ।
;The party leader resisted demands for his resignation. [cambridge dictionary]
;पार्टी नेता ने अपने इस्तीफे के लिए मांगों का प्रतिरोध किया.
;I found the temptation to miss the class too hard to resist. [oxford learner's dictionary]
;मैंने कक्षा में न जाने के प्रलोभन का प्रतिरोध करना बहुत मुश्किल  पाया ।
(defrule resist_default-rule
(declare (salience 0))
(id-root ?id resist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiroXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resist.clp 	resist_default-rule   "  ?id "   prawiroXa_kara)" crlf))
)


