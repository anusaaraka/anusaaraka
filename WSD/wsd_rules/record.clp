;Added by human
(defrule record0
(declare (salience 5000))
(id-root ?id record)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 tape)
(viSeRya-on_saMbanXI ?id1 ?id) ;Replaced viSeRya-on_viSeRaNa as viSeRya-on_saMbanXI programatically by Roja 09-11-13
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rekArda_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  record.clp    record0   "  ?id "  rekArda_karanA )" crlf))
)


;@@@ Added by Anita-29.11.2013 
;Cliff Richard has recorded more number one hit songs than any other British pop star. [Cambridge ;Dictionary]
;क्लिफ रिचर्ड  ने किसी भी ब्रिटिश पोप स्टार से कहीं अधिक बेहद मशहूर गाने रिकॉर्ड किए हैं ।
;We recorded their wedding on video.
;उनके विवाह समारोह का हमने वीडियो रिकॉर्ड किया है।
(defrule record1
(declare (salience 5010))
(id-root ?id record)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?)
(kriyA-object  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rekArda_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  record.clp 	record1   "  ?id "  rekArda_kara)" crlf))
)

;@@@ Added by Anita-29.11.2013 
;legal The coroner recorded a verdict of accidental death.[Cambridge Dictionary]
;मृत्यु समीक्षक ने दुर्घटना में मृत्यु का अभिलिखित प्रमाण दिया ।
(defrule record2
(declare (salience 5020))
(id-root ?id record)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-root ?obj verdict)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBiliKiwa_pramANa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  record.clp 	record2   "  ?id "  aBiliKiwa_pramANa_xe )" crlf))
)

;@@@ Added by Anita-29.11.2013 
;She records everything that happens to her in her diary. [Cambridge Dictionary]
;जो कुछ भी उसके साथ घटित होता है उसे वह डायरी में लिख कर रख लेती है.
;In his journal, Captain Scott recorded that he and his companions were weakened by lack of food. ;[Cambridge Dictionary]
;अपनी पत्रिका में ,कैप्टेन स्कॉट ने इस बात को लिखा था कि खाने  की कमी के कारण वह और उनकी  कंपनी कमजोर हो गयी ।
(defrule record4
(declare (salience 5005))
(id-root ?id record)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-root ?obj everything)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  record.clp 	record4   "  ?id "  liKa )" crlf))
)
;@@@ Added by Anita-29.11.2013 
;Unemployment is likely to reach the highest total that has ever been recorded. [Cambridge Dictionary]
;बेकारी अपनी चर्म सीमा तक पहुंचने वाली है जितनी की पहले कभी दर्ज नहीं की गयी .
;The thermometer recorded a temperature of 30 degrees Celsius. [Cambridge Dictionary]
;थर्मामीटर ने ३० डिग्री सेल्सियस तापमान दर्ज किया
(defrule record5
(declare (salience 5006))
(id-root ?id record)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kriyA_viSeRaNa  ?id ?)(kriyA-object  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  record.clp 	record5   "  ?id "  xarja_kara )" crlf))
)
;@@@ Added by Anita-29.11.2013 
;Please record a programme from the radio. [old clp sentence]
;कृपया रेडियो से कार्यक्रम टेप कीजिए ।
(defrule record6
(declare (salience 5010))
(id-root ?id record)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 radio|tv)
(kriyA-from_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tepa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  record.clp 	record6   "  ?id "  tepa_kara)" crlf))
)
;########################################default-rule#################################
(defrule record_default_verb
;(declare (salience 5003))
(id-root ?id record)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rajistara_mez_xarja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  record.clp 	record_default_verb   "  ?id "  rajistara_mez_xarja_kara )" crlf))
)

;"record","VT","1.rajistara_mez_xarja_karanA"
;The programme was recorded in detail.
;--"2.aMkiwa_karanA"  
;Barometer recorded a pressure of 76cm of mercury.   
;--"3.progrAma_ko_tepa_karanA"   
;Please record a programme from the radio.
;
;

(defrule record_default_noun
(declare (salience 4900))
(id-root ?id record)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBileKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  record.clp    record_default_noun   "  ?id "  aBileKa )" crlf))
)


