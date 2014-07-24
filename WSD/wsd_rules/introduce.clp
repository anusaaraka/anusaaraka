
(defrule introduce0
(declare (salience 5000))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paricaya_karA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce0   "  ?id "  paricaya_karA )" crlf))
)

(defrule introduce1
(declare (salience 4900))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paricaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce1   "  ?id "  paricaya_kara )" crlf))
)

;"introduce","VT","1.paricaya_karAnA[karanA]"
;Graham was introduced to me  in the function.
;--"2.praswuwa_karanA"
;A new word processor was introduced.
;--"3.upalabXa_karAnA"
;The domestic appliances were introduced in the market .
;

;ADDED BY PRACHI RATHORE
;The tube which carries the laser is introduced into the abdomen through a small cut in the skin.[PHYSICS]
;नली लेज़र को चमड़ी में एक छोटे से चीरे के बाद पेट में प्रवेश कराती है .

(defrule introduce2
(declare (salience 5100))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praveSa_karA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce2   "  ?id "  praveSa_karA )" crlf))
)

;ADDED BY PRACHI RATHORE
;The smaller 10 pence coin was introduced in 1992.[CAMBRIDGE]
;दस पेन्स के सिक्के १९९२ में शुरू किए गए थे .

(defrule introduce3
(declare (salience 5000))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI ?id ?id1)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SurU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce3   "  ?id "  SurU_kara )" crlf))
)


;ADDED BY PRACHI RATHORE
;A haunting oboe solo introduces the third movement of the concerto.[CAMBRIDGE]
;एक अकेले प्रदर्शन ने  बार बार याद आने वाले  पल की बंदिश की शुरुआत की  .
(defrule introduce4
(declare (salience 5000))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id verb)
(id-root ?id1 movement|act|schedule)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SuruAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce4   "  ?id "  SuruAwa_kara )" crlf))
)


;ADDED BY PRACHI RATHORE
;They have been slow to introduce changes in procedure.[M-W LEARNERS DICT.]
;वे कार्यविधि में परिवर्तन लाने में धीमे हो चुके हैं . 
(defrule introduce5
(declare (salience 5000))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce5   "  ?id "  lA )" crlf))
)


;ADDED BY PRACHI RATHORE
;Such unpopular legislation is unlikely to be introduced before the next election.[CAMBRIDGE]
;इस तरह के अलोकप्रिय लेजिस्लेशन का अगले चुनाव तक पेश करना संभव नहीं है.

(defrule introduce6
(declare (salience 5000))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-during_saMbanXI ?id ?)(kriyA-before_saMbanXI ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce6   "  ?id "  peSa_kara )" crlf))
)


;ADDED BY PRACHI RATHORE
;Can I introduce myself? I'm Helen Robins.[OALD]
;क्या मैं खुद का परिचय दे सकता हूँ? मैं हेलेन रोबिन्स् हूँ . 
(defrule introduce7
(declare (salience 5100))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id verb)
;(id-root id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id1 pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paricaya_xe))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce7   "  ?id "  paricaya_xe )" crlf))
)

;ADDED BY PRACHI RATHORE
;The next programme will be introduced by Mary David.[OALD]
;अगला कार्यक्रम मेरी डेवीड के द्वारा पेश किया जाएगा . 
(defrule introduce8
(declare (salience 5100))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object ?id ?id1)(kriyA-subject ?id ?id1))
(id-cat_coarse ?id verb)
(id-root ?id1 line|range|bill|programme|appliance|processor)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce8   "  ?id "  peSa_kara )" crlf))
)


;ADDED BY PRACHI RATHORE
;Further, the value of e / m was found to be independent of the nature of the material/metal used as the cathode (emitter), or the gas introduced in the discharge tube. [PHYSICS]
;यह भी पाया गया कि e / m का मान कैथोड ( उत्सर्जक ) के पदार्थ अथवा धातु या विसर्जन - नलिका में भरी गैस की प्रकृति पर निर्भर नहीं करता .
;The new carpet introduces some color into the living room. 
;The rivalry introduced more drama to/into the competition.
(defrule introduce9
(declare (salience 5300))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-into_saMbanXI ?id ?id1)(kriyA-in_saMbanXI ?id ?id1))
(id-cat_coarse ?id verb)
(id-root ?id1 room|competition|tube)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce9   "  ?id "  Bara )" crlf))
)


;ADDED BY PRACHI RATHORE
;Bands from London introduced the craze for this kind of music.[OALD]
;लन्दन के बैंड  इस प्रकार के सङ्गीत के लिए जुनून लाए . 
(defrule introduce10
(declare (salience 5300))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id verb)
(id-root ?id1 craze)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce10   "  ?id "  lA )" crlf))
)


;ADDED BY PRACHI RATHORE
;An Asian plant that has been introduced to America. [M-W LEARNERS DICT.]
;एशियाई वनस्पति जो अमरीका को भेजी गयी है . 
(defrule introduce11
(declare (salience 5300))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "place.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce11   "  ?id "  Beja )" crlf))
)


;ADDED BY PRACHI RATHORE
;She introduced her mother to her friends.[M-W LEARNERS DICT.]
;उसने उसके मित्रों को उसकी माँ से मिलवाया . 
(defrule introduce12
(declare (salience 5300))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?id2)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milavA))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce12   "  ?id "  milavA )" crlf))
)

;@@@ Added by Prachi Rathore 22-1-14
;In the Faculty of Law the system of teaching by cases and clauses for the discussion of legal problems was introduced.[gyannidhi]
;कानून संकाय में कानूनी समस्याओं से संबंधित विवेचनों में मुकदमों और दफाओं के अनुसार शिक्षा देने की पद्धति शुरू की गई।
(defrule introduce13
(declare (salience 5000))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
(kriyA-karma  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Suru_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce13   "  ?id "  Suru_kara )" crlf))
)

;@@@ Added by Prachi Rathore 22-1-14
;Graham was introduced to me in the function.[old sentence]
;ग्रहाम का कार्यक्रम में मुझसे परिचय करवाया गया था . 
(defrule introduce14
(declare (salience 5100))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
(kriyA-karma  ?id ?id1)
(or(id-root id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))(id-cat_coarse ?id1 PropN))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paricaya_kara))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce14   "  ?id "  paricaya_kara )" crlf))
)

;@@@ Added by Prachi Rathore[5-3-14]
;For example if you by habit always hold your head a bit too far to the right while reading the position of a needle on the scale you will introduce an error due to parallax.[ncert]
;उदाहरण के लिए, प्रकाशीय मञ्च पर सुई की स्थिति का पैमाने पर पाठ्याङ्क लेते समय यदि आप स्वभाव के कारण अपना सिर सदैव सही स्थिति से थोडा दाईं ओर रखेङ्गे, तो पाठन में लम्बन के कारण त्रुटि आ जाएगी.
;उदाहरण के लिए, प्रकाशीय मञ्च पर सुई की स्थिति का पैमाने पर पाठ्याङ्क लेते समय यदि आप स्वभाव के कारण अपना सिर सदैव सही स्थिति से थोडा दाईं ओर रखेङ्गे ,तो आप पाठन में लम्बन के कारण त्रुटि आ करेंगे.
;A good strategy is to focus first on the essential features discover the basic principles and then introduce corrections to build a more refined theory of the phenomenon.[ncert]
;.एक अच्छी युक्ति वही है कि पहले किसी परिघटना के परमावश्यक लक्षणों पर ध्यान केन्द्रित करके उसके मूल सिद्धान्तों को खोजा जाए और फिर संशुद्धियों को सन्निविष्ट करके उस परिघटना के सिद्धान्तों को और अधिक परिशुद्ध बनाया जाए..
(defrule introduce15
(declare (salience 5100))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 error|correction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce15   "  ?id "  kara )" crlf))
)
