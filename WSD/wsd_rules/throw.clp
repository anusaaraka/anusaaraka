(defrule throw0
(declare (salience 5000))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMkanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throw.clp 	throw0   "  ?id "  PeMkanA )" crlf))
)

;"throw","N","1.PeMkanA"
;Peter Sampras won the Wimbledon && his throw was great.
;--"2.pAsa"
;It is just a stone's throw from here.
;

;salience reduced from 4900 to 4000 by Parchi Rathore[28-11-13]
(defrule throw1
(declare (salience 4000))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throw.clp 	throw1   "  ?id "  PeMka )" crlf))
)

;Added by sheetal(20-01-10).
;John last week threw a great party .
(defrule throw2
(declare (salience 5000))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 party)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throw.clp     throw2   "  ?id "  xe )" crlf))
)


;"throw","VT","1.PeMka"
;He threw the ball in the nets.
;--"2.nIce_girA_xenA"
;The unruly elephant threw the mahout down.
;--"3.meM_honA"
;Her announcement threw everybody in a state of confusion.
;--"4.xiKAnA"
;Don't throw tantrums.
;

;@@@ Added by Prachi Rathore[27-11-13]
;He threw a punch at (= hit) his attacker.
;उसने अपने हमलावर पर जोर से एक मुक्का मारा.
(defrule throw3
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 punch)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throw.clp 	throw3   "  ?id "  mAra )" crlf))
)

;@@@ Added by Prachi Rathore[27-11-13]
;She threw back her hair.
;उसने अपने बाल पीछे कीं ओर झटके .
(defrule throw4
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 back)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Jataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw4  "  ?id "  " ?id1 " Jataka  )" crlf))
)

;@@@ Added by Prachi Rathore[27-11-13]
;She drew back the curtains and threw open all the windows.
;उसने परदों को वापिस खीच दिया और सारी खिडकियों को खोल दिया.
(defrule throw5
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 open)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Kola_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw5  "  ?id "  " ?id1 " Kola_xe  )" crlf))
)

;@@@ Added by Prachi Rathore[27-11-13]
;My mother threw a fit when she saw what a mess we'd made of her kitchen.
;मेरी माँ गुस्से से पागल हो गयी जब उन्होंने देखा कि हमने उनके रसोईघर का क्या बुरा हाल किया था.
(defrule throw6
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 fit);woobly ???
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gusse_se_pAgala_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw6  "  ?id "  " ?id1 " gusse_se_pAgala_ho_jA  )" crlf))
)

;@@@ Added by Prachi Rathore[28-11-13]
;After the accident, the safety inspector threw the book at the company directors.
;दुर्घटना के बाद सुरक्षा इंस्पेक्टर ने कंपनी के प्रबंधक को कड़े शब्दो में नियम बताये .
(defrule throw7
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-word ?id1 book)
;(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kade_Sabxo_meM_niyama_bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw7  "  ?id "  " ?id1 " kade_Sabxo_meM_niyama_bawA )" crlf)))


;@@@ Added by Prachi Rathore[28-11-13]
;When I bought my new glasses, they threw in a free pair of prescription sunglasses.
;जब मैंने अपना नया चश्मा खरीदा ,उन्होंने एक नया नम्बर वाला धूप का चश्मा जाँच में मुझे मुफ्त में दिया 
(defrule throw8
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throw.clp 	throw8   "  ?id "  xe )" crlf))
)

;@@@ Added by Prachi Rathore[28-11-13]
;She's thrown herself into this new job.
;  उसने अपने को इस नई नौकरी में पूरी तरह से लिप्त कर लिया है.
(defrule throw9
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?)
(kriyA-object  ?id ?id1)
(or(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))(id-cat_coarse ?id1 pronoun))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lipwa_kara))
(assert (kriyA_id-subject_viBakwi ?id ne))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throw.clp 	throw9   "  ?id "  lipwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  throw.clp 	throw9   "  ?id "  ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  throw.clp 	throw9   "  ?id "  ko )" crlf))
)

;@@@ Added by Prachi Rathore[28-11-13]
;They threw the police off the scent by travelling on false passports.
; उन्होंने जाली पासपोर्ट पर यात्रा करके पुलिस को चकमा दे दिया .
(defrule throw10
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-off_saMbanXI  ?id ?id2)
(kriyA-object ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakamA_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throw.clp 	throw10   "  ?id "  cakamA_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  throw.clp 	throw10    "  ?id "  ko )" crlf))
)


;@@@ Added by Prachi Rathore[28-11-13]
;The case was thrown out by the courts due to lack of evidence.
; सबूत कीं कमी के कारण केस को कोर्ट के द्वारा मंजूर नहीं किया गया .
(defrule throw11
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
(kriyA-subject  ?id ?id2)
(not(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 manjUra_nahIM_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw11  "  ?id "  " ?id1 " manjUra_nahiM_kara  )" crlf))
)

;@@@ Added by Prachi Rathore[28-11-13]
;She threw him over for a richer man.
; अमीर आदमी के लिए उसने उससे सम्बंध तोड़ लिए  
(defrule throw12
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 over)
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sambanXa_woda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw12  "  ?id "  " ?id1 " sambanXa_woda  )" crlf))
)

;@@@ Added by Prachi Rathore[28-11-13]
;We were thrown together by chance at a conference.
;कान्प्रेंस में इत्तफाक से हम एक दूसरे के साथ मिले
(defrule throw13
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 together)
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw13  "  ?id "  " ?id1 " mila )" crlf))
)

;@@@ Added by Prachi Rathore[28-11-13]
;He's thrown up his job and gone off to Africa to work for a children's charity.
;वह अपनी नौकरी छोड़ कर बच्चों के धर्मार्थ संगठन में काम करने के लिए अफ्रीका चला गया.
(defrule throw14
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(kriyA-subject  ?id ?id2)
(id-root ?id2 job)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Coda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw14  "  ?id "  " ?id1 " Coda)" crlf))
)

;@@@ Added by Prachi Rathore[28-11-13]
;He threw up his breakfast all over the back seat of the car.
;उसने कार कीं पिछली सीट पर सब तरफ अपना नाश्ता गिरा दिया (बिखेर दिया )
(defrule throw16
(declare (salience 4500))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 biKera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw16  "  ?id "  " ?id1 " biKera)" crlf))
)

;@@@ Added by Prachi Rathore[28-11-13]
;They had a big row and she threw him out (= made him leave the house) .
;उनका एक बड़ा झगड़ा हुआ और उसने उसे घर से निकाल दिया.
(defrule throw17
(declare (salience 4800))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikala_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw17  "  ?id "  " ?id1 " nikala_xe)" crlf))
)

;@@@ Added by Prachi Rathore[28-11-13]
(defrule throw18
(declare (salience 5200))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-det_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throw.clp 	throw18   "  ?id "  xAzva )" crlf))
)

;@@@ Added by Prachi Rathore[28-11-13]
;"Is your house far from here?" "No, it's only a stone's throw away ."

;क्या तुम्हारा घर यहाँ से दूर है ?” नहीं यहाँ से बहुत ही नजदीक है 
(defrule throw19
(declare (salience 5200))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
(id-root ?id1 stone)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kuCa_xUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw19  "  ?id "  " ?id1 " kuCa_xUra)" crlf))
)

;@@@ Added by Prachi Rathore[28-11-13]
;The question threw him off balance for a moment.
; प्रश्न ने उसे कुछ मिनिट के लिए उलझन में डाल दिया.
(defrule throw20
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-off_saMbanXI  ?id ?id2)
(kriyA-object ?id ?id1)
(id-root ?id2 balance )
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 UlaJana_me_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw20  "  ?id "  " ?id2 " UlaJana_me_dAla)" crlf))
)

;@@@ Added by Prachi Rathore[28-11-13]
;The boy threw a frightened look in the direction of the house.
;बच्चे ने एक डर से भरी नजर से घर कि ओर देखा .
(defrule throw21
(declare (salience 4900))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 look|glance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throw.clp 	throw21   "  ?id "  xeKa )" crlf))
)

;@@@ Added by Prachi Rathore[3-1-14]
;My stomach was upset and I felt like I might throw up.[m-w]
;मेरा पेट खराब था और मैंने महसूस किया कि मैं उल्टी कर सकता हूँ .  
(defrule throw22
(declare (salience 4500))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ultI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw22  "  ?id "  " ?id1 " ultI_kara)" crlf))
)


;@@@ Added by Prachi Rathore[21-1-14]
;The crowd threw up their hands in dismay.
;भीड ने निराशा में उनके हाथ ऊपर उठाए . 
(defrule throw23
(declare (salience 5000))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(kriyA-object  ?id ?id2)
(id-root ?id2 hand)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Upara_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw23  "  ?id "  " ?id1 " Upara_uTA)" crlf))
)

;@@@ Added by Prachi Rathore[3-2-14]
;I don't need that—you can throw it away.[oald]
;मुझे  उसकी जरूरत नहीं है  — आप यह फेक सकते हैं . 
(defrule throw24
(declare (salience 4000))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-root ?id1 away)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Peka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw24  "  ?id "  " ?id1 " Peka)" crlf))
)

;@@@ Added by Prachi Rathore[3-2-14]
;That old chair should be thrown away.[oald]
;वह पुरानी कुर्सी फेक दी जानी चाहिए . 
(defrule throw25
(declare (salience 4000))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 away)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Peka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw25  "  ?id "  " ?id1 " Peka_xe)" crlf))
)

;@@@ Added by Prachi Rathore[18-2-14]
;They threw him in the swimming pool. 
;unhoMne waraNa wAla meM usako PeMkA.
(defrule throw26
(declare (salience 5000))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throw.clp 	throw26   "  ?id "  PeMkA )" crlf))
)

;@@@ Added by Prachi Rathore[18-2-14]
;Her announcement threw everybody in a state of confusion.[sentence from this file]
;उसकी सूचना ने प्रत्येक व्यक्ति को भ्रम (की अवस्था) में डाल दिया . 
(defrule throw27
(declare (salience 5000))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
(kriyA-object  ?id ?)
(id-root ?id1 state)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throw.clp 	throw27   "  ?id "  dAla_xe )" crlf))
)

;@@@ Added by Prachi Rathore[19-2-14]
; This meat is rather high - shall I throw it out?[cambridge]
;यह माँस काफी बदबूदार- क्या मैं इसे बाहर फेंक दूँ? 
(defrule throw28
(declare (salience 4800))
(id-root ?id throw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
(kriyA-object  ?id ?id2)
(not(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PeMka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " throw.clp	throw28  "  ?id "  " ?id1 " PeMka_xe)" crlf))
)

