

;@@@ Added by Anita - 8.5.2014
;My wallet has gone! I have been robbed! [cambridge dictionary]
;मेरा बटुआ खो गया है मुझे लूट लिया गया है !  ।
;The tomb had been robbed of its treasures. [oxford learner's dictionary]
;मक़बरे का खजाना लूट लिया गया था । 
(defrule rob0
(declare (salience 1000))
(id-root ?id rob)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-vAkyakarma  ?id ?)(kriyA-of_saMbanXI  ?id ?sam))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lUta_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rob.clp     rob0  "  ?id " lUta_le_jA )" crlf))
)
;@@@ Added by Anita - 8.5.2014
;They robbed the company of £2 million. [cambridge dictionary]
;उन्होंने कंपनी पर दो मिलियन पॉउन्ड की डकैती की ।
(defrule rob1
(declare (salience 2000))
(id-root ?id rob)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 company)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dakEwI_kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rob.clp     rob1  "  ?id " dakEwI_kI )" crlf))
)
;@@@ Added by Anita - 8.5.2014
;A last-minute injury robbed me of my place on the team. [cambridge dictionary]
;आखिरी मिनट की चोट के वजह से मैं टीम में मेरी जगह से वंचित हो गया । 
;A last-minute goal robbed the team of victory. [oxford learner's dictionary]
;आखिरी मिनट के गोल ने टीम को जीत से वंचित कर दिया ।
(defrule rob2
(declare (salience 3000))
(id-root ?id rob)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 team)
(or(kriyA-on_saMbanXI  ?id ?id1)(kriyA-object  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaMciwa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rob.clp     rob2  "  ?id " vaMciwa_kara_xe )" crlf))
)
;@@@ Added by Anita - 9.5.2014
;The gang had robbed and killed the drugstore owner. [oxford learner's dictionary]
;गिरोह ने पहले चोरी की और दवा की दुकान के मालिक को मार डाला था ।
(defrule rob3
(declare (salience 4000))
(id-root ?id rob)
?mng <-(meaning_to_be_decided ?id)
(conjunction-components  ?con ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id corI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rob.clp     rob3  "  ?id " corI_kara )" crlf))
)

;@@@ Added by Anita - 9.5.2014
;He had been robbed of his dignity. [oxford learner's dictionary]
;उनसे उनकी प्रतिष्ठा को  छीन लिया गया था ।
(defrule rob4
(declare (salience 5000))
(id-root ?id rob)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 dignity)
(kriyA-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CIna_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rob.clp     rob4  "  ?id " CIna_le_jA )" crlf))
)
;###################################default-rule###################################
;@@@ Added by Anita - 8.5.2014
;The terrorists financed themselves by robbing banks. [cambridge dictionary]
;आतंकवादी बैंक लूट कर खुद का आर्थिक प्रबन्ध करते हैं  ।
(defrule rob_default-rule
(declare (salience 0))
(id-root ?id rob)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rob.clp     rob_default-rule  "  ?id " lUta )" crlf))
)
