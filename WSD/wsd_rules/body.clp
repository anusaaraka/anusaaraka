;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24-Feb-2014
;There are also forces involving charged and magnetic bodies.[ncrt]
;आवेशित तथा चुम्बकीय वस्तुओं के कारण भी बल होते हैं.
(defrule body3
(declare (salience 5000))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) charge|magnetic)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  body.clp      body3   "  ?id "  vaswu )" crlf))
)

;Added by Meena(24.02.10)
;The camel can adjust its body temperature according to the external temperature.
(defrule body0
(declare (salience 4900))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ?)
(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SarIrika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  body.clp      body0   "  ?id "  SarIrika )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-March-2014
;Regular use of conditioner is supposed to give your hair more body.[oald]
;माना जाता है कि कंडीश्नर का नियमित उपयोग आपके बालों को अधिक मजबूती देगा. 
(defrule body4
(declare (salience 5000))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object_1  ?kri ?id1)
(kriyA-object_2  ?kri ?id)
(id-root ?id1 hair)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majabuwI))
(assert (kriyA_id-object1_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  body.clp      body4   "  ?id "  majabuwI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object1_viBakwi   " ?*wsd_dir* " body.clp      body4   "  ?id " ko )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-March-2014
;The family of the missing girl has been called in by the police to identify the body.[oald]
;लापता लडकी के परिवार को लाश की पहचान करने के लिये पुलीस द्वारा बुलाया गया है .
(defrule body5
(declare (salience 5000))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?kri identify)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  body.clp      body5   "  ?id "  lASa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-March-2014
;The body of the letter/report.[shiksharthi]
;पञ /रिपोर्ट का कलेवर
(defrule body6
(declare (salience 5000))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 letter|report)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalevara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  body.clp      body6   "  ?id "  kalevara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-March-2014
;The protesters marched in a body to the White House.[oald]
;प्रदर्शनकारियों ने व्हाइट हाउस की ओर मिलकर मार्च किया.
(defrule body7
(declare (salience 5000))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?kri ?id)
(id-word =(- ?id 2) in)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 2) milakara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " body.clp      body7  "  ?id "  " (- ?id 2) "  milakara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-March-2014
;A large body of people will be affected by the tax cuts.[oald]
;लोगों का एक बड़ा समूह टैक्स में कटौती से प्रभावित होगा.
(defrule body8
(declare (salience 5000))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 people)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id samUha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  body.clp  	body8   "  ?id "  samUha )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-March-2014
;The governing body of the school is concerned about discipline.[oald]
;स्कूल के शासी निकाय अनुशासन के बारे में चिंतित है.
;Recognized professional bodies such as the Law Association.[oald]
; मान्यता प्राप्त व्यावसायिक निकाय जैसे कि कानून एसोसिएशन.
;A regulatory body.[oald]
;An advisory body.[oald]
;A review body.[oald]
;An independent body has been set up to investigate the affair.[oald]
(defrule body9
(declare (salience 5000))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-word ?id1 regulatory|advisory|review|governing|independent)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nikAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  body.clp  	body9   "  ?id "  nikAya )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-March-2014
;A vast body of information.[oald]
;जानकारी का एक विशाल संग्रह
(defrule body10
(declare (salience 5000))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 information)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMgraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  body.clp      body10   "  ?id "  saMgraha )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01/04/2014
;Full honour was given to the body of the inspector on the police lines on Friday.[news-dev]
;शुक्रवार को दरोगा के शव को पुलिस लाइन में सलामी दी गई।
(defrule body11
(declare (salience 5000))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri ?id1)
(kriyA-to_saMbanXI  ?kri ?id)
(id-word ?id1 honour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  body.clp      body11   "  ?id "  Sava )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01/04/2014
;The family took the body to Mainpuri for the funeral.[news-dev]
;परिजन अंतिम संस्कार के लिए शव को मैनपुरी ले गए 
(defrule body12
(declare (salience 5000))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(kriyA-for_saMbanXI  ?kri ?id2)
;(id-root ?kri take)
(id-word ?id2 funeral)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  body.clp      body12   "  ?id "  Sava )" crlf))
)



 
;***************************DEFAULT RULES************************

(defrule body1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bodied )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id viSeRa_prakAra_kA_SarIra_raKane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  body.clp  	body1   "  ?id "  viSeRa_prakAra_kA_SarIra_raKane_vAlA )" crlf))
)

;"bodied","Adj","1.viSeRa_prakAra_kA_SarIra_raKane_vAlA"
;All soldiers are able-bodied people.
;



;Salience reduced by Meena(24.02.10)
(defrule body2
(declare (salience 0))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SarIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  body.clp 	body2   "  ?id "  SarIra )" crlf))
)

;default_sense && category=noun	SarIra	0
;"body","N","1.SarIra"
;Human body is a unique creation of God.
;--"2.samiwi"
;The whole body of doctors were working on the new medicine.
;--"3.DAzcA"
;The body of the truck got completely damaged in the accident.
;
;LEVEL 
;Headword : body
;
;Examples --
;
;"body","N","1.SarIra"
;Human body is a unique creation of God.
;mAnava SarIra BagavAna kI eka ananya racanA hE.
;--"2.XadZa"
;He has a strong body but week limbs.
;usakA XadZa majZabUwa hE para hAWa-pAzva kamajZora
;--"3.samuxAya"
;The whole body of doctors were working on the new medicine.
;dAktaroM kA pUrA samuxAya nayI ORaXI para kAma kara rahA WA.
;--"3.muKya_BAga"
;The body of the truck got completely damaged in the accident.
;xurGatanA meM traka kA pUrA DAzcA burI waraha se tUta gayA.
;--"4.KapiNda"
;Heavenly bodies
;svargIya KapiNda
;
; sUwra : piNda[>SarIra]

;A wine with plenty of body.
;Regular use of conditioner is supposed to give your hair more body.
;A dead body.
;The family of the missing girl has been called in by the police to identify the body.
;The battlefield was covered with bodies.
;They carried the bodies to the graveyard.
;The body of the letter.
;The main body of the text.
;The protesters marched in a body to the White House.
;A regulatory body.
;An advisory body.
;A review body.
;The governing body of the school is concerned about discipline.
;Recognized professional bodies such as the Law Association.
;An independent body has been set up to investigate the affair.
;A large body of people will be affected by the tax cuts.
;The protesters marched in a body to the White House.
;A meeting of representatives of the student body and teaching staff.
;An operation to remove a foreign body from a wound.

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_body9
(declare (salience 5000))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-word ?id1 regulatory|advisory|review|governing|independent)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nikAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " body.clp   sub_samA_body9   "   ?id " nikAya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_body9
(declare (salience 5000))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-word ?id1 regulatory|advisory|review|governing|independent)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nikAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " body.clp   obj_samA_body9   "   ?id " nikAya )" crlf))
)
