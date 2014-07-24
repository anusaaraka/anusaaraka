; @@@ Added by Krithika 21/01/2014
; Translations by Veena Bagga.
; People were working in the fields.   [OALD]
; लोग खेतों में काम कर रहें थे .
; The people came to the fields to plough. [OALD]
; लोग खेत जोतने के लिए आएं .या लोग खेत में जोतने का काम करने के लिए आए .
; He planted a field of wheat.    [OALD]
; उसने खेत में गेहूं कि फसल लगाई 
(defrule field2
(declare (salience 4900))
(id-root ?id field)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-in_saMbanXI  ?id1 ?id) (kriyA-to_saMbanXI   ?id1 ?id)(kriyA-object  ?id1 ?id) )
(id-root ?id1 plant|plough|work)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kewa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  field.clp 	field2   "  ?id "  Kewa )" crlf))
)
;___________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Shuchita.
; She had to plough the field, manure and water the land, sow seeds and ultimately harvest the crop.    [OALD]
; स प्रकार उनकी सहायता से उमा के खेतों में जोताई हुई, बीज पड़े , सिचाई हुई और अच्छी फसल उतरी।
; He planted a field of wheat.    [OALD]
; उसने खेत में गेहूं कि फसल लगाई 
(defrule field4
(declare (salience 4900))
(id-root ?id field)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-to_saMbanXI  ?id2 ?id)
(kriyA-kriyArWa_kriyA  ?id2 ?id1) 
(id-root ?id1 plant|plough|work)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kewa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  field.clp 	field4   "  ?id "  Kewa )" crlf))
)
;_____________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
; For Liverpool fans, it was a night to remember both on and off the field.    [OALD]
; लिवरपूल के प्रशंसकों के लिए मैदान के अंदर और बाहर यह एक यादगार रात थी . 
(defrule field5
(declare (salience 4800))
(id-root ?id field)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word =(- ?id 1) a)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  mExAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  field.clp 	field5   "  ?id "   mExAna )" crlf))
)
;_____________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
; Our bus stopped near the cricket field.   [Self]
; हमारी बस क्रिकेट के मैदान के पास आकर रुकी .
(defrule field6
(declare (salience 4800))
(id-root ?id field)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-root ?id1 rugby|baseball|football|soccer|cricket)
=>	
(retract ?mng)
(assert (id-wsd_root_mng ?id  mExAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  field.clp 	field6   "  ?id "   mExAna )" crlf))
)
;_____________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
; You will need to create separate fields for first name, surname and address.   [OALD]
; आपको पहले नाम कि फिर कुलनाम और पते कि अलग अलग  फील्ड बनानी पड़ेगी .( आधार बनाना पड़ेगा )
(defrule field7
(declare (salience 4800))
(id-root ?id field)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 create)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PZIlda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  field.clp 	field7   "  ?id "  PZIlda )" crlf))
)
;_____________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
; He fielded the ball expertly.   [OALD]
; उसने बड़ी ही सूझबूझ (दक्षता ) से गेंद पकड़ा .
(defrule field8
(declare (salience 4800))
(id-root ?id field)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 ball)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  field.clp 	field8   "  ?id "  pakada)" crlf))
)
;_____________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
; He won the toss and chose to field first. [OALD]
; उसने टाँस जीत कर पहले  क्षेत्र रक्षण करने का निश्चय किया ( को चुना )
(defrule field9
(declare (salience 4800))
(id-root ?id field)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(id-root ?id1 choose|elect|opt)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewra_rakRaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  field.clp 	field9   "  ?id "  kRewra_rakRaNa_kara)" crlf))	
)
;_____________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
;   Each of the main parties fielded more than 300 candidates.    [OALD]
; प्रत्येक दल ने तीन सौ से अधिक प्रत्याशी क्षेत्र में उतारे .
(defrule field10
(declare (salience 4800))
(id-root ?id field)
(id-word ?id fielded)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewra_meM_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  field.clp 	field10   "  ?id "  kRewra_meM_uwAra)" crlf))
)
;_____________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
;   The BBC had to field more than 300 phone calls after last night's programme.   [OALD]
; पिछली रात के कार्यक्रम के बाद बी.बी.सी को तीन सौ अधिक फ़ोन कॉल्स का मुकाबला (सामना )करना पड़ा .  
(defrule field11
(declare (salience 4800))
(id-root ?id field)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?)
(kriyA-kriyArWa_kriyA  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukAbalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  field.clp 	field11   "  ?id "  mukAbalA_kara)" crlf))
)
;_____________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
;   Today they take the field against county champions Essex.  [OALD]
; आज वे काउंटी के विजेता एसेक्स के विरुद्ध  मैदान में उतरेंगे .
(defrule field12
(declare (salience 4800))
(id-root ?id field)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-det_viSeRaNa  ?id ?)
(kriyA-object_1  ?id1 ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  ?id1     mExAna_meM_uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  field.clp 	field12  "  ?id "    "?id1"     mExAna_meM_uwara)" crlf))
)
;_____________________________________________________________________
; @@@ Added by Krithika 21/01/2014
; Hindi Translations by Veena Bagga.
;   Players are only reselected if they retain their form on the field.  [OALD]
; खिलाडियों को फिर से तभी चुना जाता है अगर वे खेल के मैदान में अपना फॉर्म बनाएं रखते हैं .
(defrule field13
(declare (salience 4800))
(id-root ?id field)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-on_saMbanXI  ? ?id)  (kriyA-on_to_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mExAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  field.clp 	field13   "  ?id "  mExAna)" crlf))
)

;---------------------------- Default Rules -----------------------------
; Added example sentence with translation by Krithika 21/1/2014.
; Translations by Veena Bagga.
; They lead the field in home entertainment systems. [OALD]
; होम (घरेलू ) मनोरंजन सारणी के क्षेत्र में वे सबसे अग्रणी हैं . 
; Removed salience
(defrule field0
(id-root ?id field)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  field.clp    field0   "  ?id "  kRewra )" crlf))
)
;__________________________________________________________________________________
; Added example sentence with translation by Krithika 21/1/2014 .
; Translations by Veena Bagga.
; He won the toss and chose to field first. [OALD]
; उसने टाँस जीत कर पहले  क्षेत्र रक्षण करने का निश्चय किया ( को चुना )    
; Removed salience
(defrule field1
(declare (salience 100))
(id-root ?id field)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewra_rakRaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  field.clp    field1   "  ?id "  kRewra_rakRaNa_kara )" crlf))
)

;default_sense && category=verb kRewra_rakRaNa_kara     0
;"field","V","1.kRewra_rakRaNa_karanA"
;The player fielded the ball with great agility.
;--"2.kRewra_meM_uwAranA{rAjanIwi_ke_saMxarBa_meM}"
;In this election some political parties fielded less number of candidates compared to the last ellections.

;________________________________________________________________________
; ############################# To be handled ########################################
; ‘How big was the bomb, if it did all that damage?’ ‘I don't know. Not my field’ .

;________________________________________________________________________
; ############################# Test examples ########################################
;People were working in the fields.
;She had to plough the field, manure and water the land, sow seeds and ultimately harvest the crop.
;He planted a field of wheat. 
;The people came to the fields to plough. 
;I enjoy meeting people in other fields of business.
;All of them are experts in their chosen field.
;This discovery has opened up a whole new field of research.
;‘How big was the bomb, if it did all that damage?’ ‘I don't know. Not my field’ .
;It is an essential reading for those working in the field.
;Programming really isn't my field - you'd better ask Phil. 
;They lead the field in home entertainment systems.
;They made a tour of Civil War fields. 
;Each of the main parties fielded more than 300 candidates.
;England fielded a young side in the World Cup.
;In this election some political parties fielded less number of candidates compared to the last elections.
;He won the toss and chose to field first.
;Our plane came down in a field. 
;We camped in a field near the village.
;For Liverpool fans, it was a night to remember both on and off the field.
;Our bus stopped near the cricket field.
;Players are only reselected if they retain their form on the field .
;Today they go on to the field to play a game against county champions Essex.
;Today they take the field against county champions Essex.
;The field includes three world-record holders.
;He fielded the ball expertly.
;The player fielded the ball with great agility.
;He was expected to field the ball well. 
;You will need to create separate fields for first name, surname and address.
;The BBC had to field more than 300 phone calls after last night's programme.
;We then tested the questionnaire in field conditions.
