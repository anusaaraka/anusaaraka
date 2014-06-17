;@@@ Added by Anita--6.3.2014
;In her autobiography she occasionally refers to her unhappy schooldays. [Cambridge dictionary ]
;अपनी आत्मकथा में उसने कई बार उसके स्कूल के दुख से भरे दिनों का उल्लेख किया है .
(defrule refer1
(declare (salience 4700))
(id-root ?id refer)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 autobiography)
(kriyA-in_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulleKa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refer.clp 	refer1   "  ?id "  ulleKa_kara )" crlf))
)
;
;$$$ Modified by Anita--6.3.2014
;Does this remark refer to you?  
; क्या यह टिप्पणी आपकी ओर संकेत करती है । [Old clp sentence]
(defrule refer2
(declare (salience 3000)) ; Added salience
(id-root ?id refer)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?)  ;Added relation by Anita
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refer.clp 	refer2   "  ?id "  saMkewa_kara )" crlf))
)

;"refer","VTI","1.saMkewa_karanA"
;Does this remark refer to you?  
;--"2.sOMpanA"
;The matter has been referred to the committee.
;--"3.havAlA_xenA"
;--"saMbMXa
;The new salary scale only refers to company managers and directors.
;नए वेतन माप का संबंध सिर्फ कम्पनी के मैनेजरों व निदेशकों से है ।
;--"4.parAmarSa_hewu_BejanA"
;--sahArA_lenA
;She spoke for an hour without once referring to her notes.
;वह एक घंटे तक एक बार भी अपने नोट्स का सहारा लिये बिना बोलती रही ।
;He referred to a history book to find out the dates of the French Revolution.
;उसने फेंच रिवोल्यूशन की तारीख पता करने के लिए इतिहास की एक पुस्तक का सहारा लिया ।
;The advocate frequently referred to his notes.
;वकील ने कई बार अपने नोट्स की सहायता ली  ।

;@@@ Added by Anita--6.3.2014
;He always refers to the house as his "refuge".  [cambridge dictionary]
;वह अपने घर को हमेशा “आश्रय-स्थल” कहकर हवाला देता है। 
(defrule refer3
(declare (salience 4500))
(id-root ?id refer)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id havAlA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refer.clp 	refer3   "  ?id "  havAlA_xe )" crlf))
)

;@@@ Added by Anita-7.3.2014
;My doctor referred me to a hospital specialist.  [cambridge Dictionary]
;मेरे डाक्टर ने मुझे अस्पताल के विशेषज्ञ से परामर्श हेतु भेजा ।
;You should refer a patient to a specialist for treatment.  [cambridge Dictionary]
;आपको मरीज़ को विशेषज्ञ से परामर्श हेतु भेजना चाहिए ।
(defrule refer4
(declare (salience 5000))
(id-root ?id refer)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 specialist)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parAmarSa_hewu_Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refer.clp 	refer4   "  ?id "  parAmarSa_hewu_Beja)" crlf))
)

;@@@ Added by Anita--7.3.2014
;The matter has been referred to the committee. [old clp. sentence]
;विषय कमेटी को सौंप दिया गया है ।
;The High Court has referred the case to the Court of Appeal.
;हाई कोर्ट ने यह  मामला कोर्ट ऑफ अपील को सौंप दिया ।
(defrule refer5
(declare (salience 5000))
(id-root ?id refer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?id1)
(id-root ?id1 committee|court)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sOMpa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refer.clp 	refer5   "  ?id "  sOMpa_xe )" crlf))
)

;@@@ Added by Anita--7.3.2014
;The new salary scale only refers to company managers and directors. [old clp. sentence]
;नए वेतन माप का संबंध सिर्फ कम्पनी के मैनेजरों व निदेशकों से है ।
(defrule refer6
(declare (salience 5500))
(id-root ?id refer)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 director)
(id-root ?id2 manager)
(kriyA-to_saMbanXI  ?id ?id1)
(kriyA-to_saMbanXI  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMbaMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refer.clp 	refer6   "  ?id "  saMbaMXa )" crlf))
)

;@@@ Added by Anita--7.3.2014
;She spoke for an hour without once referring to her notes. [old clp sentence]
;वह एक घंटे तक एक बार भी अपने नोट्स का सहारा लिये बिना बोलती रही ।
(defrule refer7
(declare (salience 5600))
(id-root ?id refer)
?mng <-(meaning_to_be_decided ?id)
(kriyA-without_saMbanXI  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAyawA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refer.clp 	refer7   "  ?id "  sahAyawA_le )" crlf))
)

;@@@ Added by Anita--7.3.2014
;He referred to a history book to find out the dates of the French Revolution. [cambridge Dictionary]
;उसने फेंच रिवोल्यूशन की तारीख पता करने के लिए इतिहास की एक पुस्तक का सहारा लिया ।
(defrule refer8
(declare (salience 5700))
(id-root ?id refer)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 book|note)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahArA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refer.clp 	refer8   "  ?id "  sahArA_le )" crlf))
)
;#####################defaultrule################################

;"refer","V","2.saMxarBa_xe"
(defrule refer0
(id-root ?id refer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMxarBa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refer.clp 	refer0   "  ?id "  saMxarBa_xe )" crlf))
)
