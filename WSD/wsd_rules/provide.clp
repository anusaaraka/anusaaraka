
;"provided","Conj","1.baSarwe_ki"
;I will present you cycle provided (that) you would pass in 1st class.
;
(defrule provide0
(declare (salience 5000))
(id-root ?id provide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 shelter)
(kriyA-shelter_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASraya_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " provide.clp provide0 " ?id "  ASraya_xe )" crlf)) 
)

(defrule provide1
(declare (salience 4900))
(id-root ?id provide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 shelter)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ASraya_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " provide.clp	provide1  "  ?id "  " ?id1 "  ASraya_xe  )" crlf))
)

(defrule provide2
(declare (salience 4800))
(id-root ?id provide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id provided )
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id baSarwe_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  provide.clp  	provide2   "  ?id "  baSarwe_ki )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;This booklet provides useful information about local services.
;यह किताब स्थानीय सेवाओं के बारे में उपयोगी जानकारी प्रदान करती है.
(defrule provide3
(declare (salience 4700))
(id-root ?id provide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 book|booklet|novel|notebook)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  provide.clp 	provide3   "  ?id "  praxAna_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Section 17 provides that all decisions must be circulated in writing.
;सेक्शन १७ यह क़ानूनी अधिकार देता है कि सारे निर्णय लिखितरूप में सबको भेजें जाए .
(defrule provide4
(declare (salience 4600))
(id-root ?id provide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 section|Affidavit|appeal|bar|case|court|judge|judgement|jury|legal|law|megistrate|petition|prosecutor)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAnUnI_aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  provide.clp 	provide4   "  ?id "  kAnUnI_aXikAra )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;He has a wife and two young children to provide for.
;उसके ऊपर अपनी पत्नी और दो बच्चों का दायित्व है.
(defrule provide5
(declare (salience 4500))
(id-root ?id provide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(and(kriyA-prayojya_karwA  ?id ?)(kriyA-preraka_kriyA  ?id ?)(kriyA-vAkyakarma  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAyiwva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  provide.clp 	provide5   "  ?id "  xAyiwva )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;We must provide for depreciation when calculating the costs.
;कीमतों को आंकते समय हमें अवमूल्यन के बारे में भी योजना बनानी चाहिए .
(defrule provide6
(declare (salience 5500))
(id-root ?id provide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-samakAlika_kriyA  ?id ?)
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yojanA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  provide.clp 	provide6   "  ?id "  yojanA_banA )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;This pressure is available, however, provided the star is not too massive. 
;इस दबाव का असर तभी पड़ता है यदि तारा बहुत अधिक विशाल न हो।
(defrule provide7
(declare (salience 4300))
(id-root ?id provide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaxi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  provide.clp 	provide7   "  ?id "  yaxi )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 24-1-2014
;The new regulation had provided for 'moot courts' for training of Law students. [Gyannidhi]
;नये नियमों के अंतर्गत कानून के छात्रों के प्रशिक्षण के लिए कानून सभाओं की व्यवस्था की गई थी।
(defrule provide8
(declare (salience 5000))
(id-root ?id provide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavasWA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  provide.clp 	provide8   "  ?id "  vyavasWA_kara )" crlf))
)

(defrule provide9
(declare (salience 4200))
(id-root ?id provide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  provide.clp 	provide9   "  ?id "  xe )" crlf))
)

;"provide","V","1.xenA"
;In Board exams some schools provide writing pads also with answer sheets.
;
;
