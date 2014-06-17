;@@@ Added by Anita-18.1.2014
;Please telephone this number if you require any further information. [Cambridge dictionary]
;अगर आपको और आगे की सूचना की जरूरत है तो कृपया इस नंबर पर फ़ोन करें.
(defrule require1
(declare (salience 5000))
(id-root ?id require)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 information|message|news)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jarUrawa_ho))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  require.clp 	require1   "  ?id "  jarUrawa_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  require.clp      require1   "  ?id " kA )" crlf)
)
)

;@@@ Added by Anita-18.1.2014
;The rules require that you bring only one guest to the dinner. [Cambridge dictionary]
;नियमों की माँग है कि आप रात के खाने के लिए केवल एक अतिथि को ही लाए ।  
(defrule require2
(declare (salience 4950))
(id-root ?id require)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 rule|law)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAzga_ho))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  require.clp  require2   "  ?id "  mAzga_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  require.clp      require2   "  ?id " kA )" crlf)
)
)

;@@@ Added by Anita--22.2.2014 
;The student was also required to obtain a working knowledge of two of the languages which form the foundation of the Indian vernaculars such as Pali Prakrit and Persian. [gyanidhi ]
;योजना के अंतर्गत यह अपेक्षित हो गया था कि विद्यार्थी को दो देशी भाषाओं का ज्ञान हो यानी अपनी मातृभाषा का सपूर्ण ज्ञान और  ;दूसरी देशी भाषा का कुछ कम विस्तृत ज्ञान।
(defrule require3
(declare (salience 4850))
(id-root ?id require)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apekRiwa))
;(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  require.clp  require3   "  ?id "  apekRiwa )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  require.clp      require3   "  ?id " kA )" crlf)
)
)

;@@@ Added by Anita 14.3.2014
;Accommodation , therefore, was required for its new functions of teaching and research. 
;लिहाज़ा , शिक्षण और अनुसंधान के नए कार्यों के लिए आवास की जरूरत थी ।
(defrule require4
(declare (salience 5100))
(id-root ?id require)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jarUrawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  require.clp 	require4   "  ?id "  jarUrawa )" crlf))
)
;###########################default-rule######################################
;@@@ Added by Anita-18.1.2014
;Skiing at 80 miles per hour requires total concentration. [Cambridge dictionary]
;८० मील प्रतिघंटे स्कींग करने के लिए पूरी एकाग्रता की आवश्कता होती है. ( जरूरत)
;Bringing up children often requires you to put their needs first.
;बच्चों को बड़ा करने में अक्सर उनकी जरूरतों को प्राथमिकता देने की आवश्यकता होती है ।
(defrule require-default_rule
(id-root ?id require)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvaSyakawA_ho))
(assert (kriyA_id-subject_viBakwi ?id ko))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  require.clp 	require-default_rule   "  ?id "  AvaSyakawA_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  require.clp      require-default_rule   "  ?id " ko )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  require.clp      require-default_rule   "  ?id " kA )" crlf)
)
)
