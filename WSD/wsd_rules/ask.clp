
(defrule ask0
(declare (salience 5000))
(id-root ?id ask)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hAlacAla_pUCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ask.clp	ask0  "  ?id "  " ?id1 "  hAlacAla_pUCa  )" crlf))
)


;The doctor asked after his patient.
;dAktara ne marIja kA hAlacAla pUCA
(defrule ask1
(declare (salience 4900))
(id-root ?id ask)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object_1 ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUCa))
(assert (kriyA_id-object1_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp 	ask1   "  ?id "  pUCa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object1_viBakwi   " ?*wsd_dir* "  ask.clp 	ask1   "  ?id " se )" crlf))
)


;Added by sheetal(6-10-09) 
;"They were asked that he be allowed to go."
(defrule ask2
(declare (salience 4900))
(id-root ?id ask)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viXi_vAkya)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp    ask2   "  ?id "  kaha )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 6-dec-2013
;I asked to see my accountant.[cambridge]
;मैनें अपने मुनीम से मिलने के लिए कहा.
;The solicitor asked that her client be allowed to make a telephone call.[cambridge]
;सोलिसिटर ने कहा कि उसके मुवक्किल  को एक टेलीफोन काल करने कीं इजाजत दी जाए .
(defrule ask4
(declare (salience 5000))
(id-root ?id ask)
?mng <-(meaning_to_be_decided ?id)
(or
(and(kriyA-kriyArWa_kriyA  ?id ?id1)(to-infinitive  ? ?id1))
(and(kriyA-vAkyakarma  ?id ?id1)(kriyA-vAkya_viBakwi ?id1 ?id2))
(and(kriyA-vAkyakarma  ?id ?id1)(to-infinitive  ? ?id1));added by garima Singh
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp    ask4   "  ?id "  kaha )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 6-dec-2013
;Ask the guard whether he knows.[cambridge]
;गार्ड से पूछो क्या उसे पता है?
(defrule ask5
(declare (salience 5000))
(id-root ?id ask)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(AjFArWaka_kriyA  ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUCa))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp 	ask5   "  ?id "  pUCa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  ask.clp 	ask5   "  ?id " se )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 6-dec-2013
;I'd like to ask your advice/opinion on a financial matter.[cambridge]
;मैं एक वित्तीय मामले पर आपकी सलाह / राय लेना चाहता हूँ
;You have to ask permission to leave.[cambridge]
;आप जाने के लिये अनुमती लेनी चाहिये
(defrule ask6
(declare (salience 5000))
(id-root ?id ask)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-word ?obj advice|permission|opinion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp 	ask6   "  ?id "  le )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 6-dec-2013
;In fact they've asked us to stay for the whole weekend.[cambridge]
;वास्तव में उन्होने हमको पूरे सप्ताहान्त तक रहने के लिये आमंत्रित करा है . 
;I've asked David to come to the party.[cambridge]
;मैं दवीड को पार्टी में आने के लिये को आमंत्रित कर चुका हूँ . 
(defrule ask7
(declare (salience 5000))
(id-word ?id asked)
?mng <-(meaning_to_be_decided ?id)
(kriyA-anaBihiwa_subject  ?id1 ?sub)
(kriyA-vAkyakarma  ?id ?id1)
(to-infinitive  ?id2 ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ko_AmaMwriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp 	ask7   "  ?id "  ko_AmaMwriwa_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 6-dec-2013
;I've asked David to the party.[cambridge]
;मैं दवीड को पार्टी में चलने के लिये आमंत्रित कर चुका हूँ 
;Ian's asked us for dinner next Friday.[cambridge]
;Ian ने अगले शुक्रवार रात के भोजन के लिए हमें आमंत्रित किया
(defrule ask8
(declare (salience 5000))
(id-word ?id asked)
?mng <-(meaning_to_be_decided ?id)
(or
(kriyA-for_saMbanXI  ?id ?id1)
(kriyA-to_saMbanXI  ?id ?id1)
)
(kriyA-object  ?id ?obj);addded by garima singh on 8-jan-2014 as above conditins were not sufficient.conflicting ex:I asked for a pay rise and she agreed.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ko_AmaMwriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp 	ask8   "  ?id "  ko_AmaMwriwa_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 31-dec-2013
;We can ask the gardeners to gather the buds just as they are about to open every evening.[gyananidhi]
;हम माली को कलियाँ इकठ्ठा करने के लिये कह सकते हैं जैसे ही वे प्रत्येक सन्ध्या खुलने के लिये चारो ओर हैं .  
(defrule ask9
(declare (salience 5000))
(id-root ?id ask)
?mng <-(meaning_to_be_decided ?id)
(kriyA-anaBihiwa_subject  ?id1 ?sub)
(kriyA-vAkyakarma  ?id ?id1)
(to-infinitive  ?id2 ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp 	ask9   "  ?id "  kaha )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-jan-2014
;I asked for a pay rise and she agreed.[oald]
;मैंने वेतन वृद्धि के लिये कहा और वह मान गयी .
(defrule ask10
(declare (salience 5000))
(id-root ?id ask)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp 	ask10   "  ?id "  kaha )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-jan-2014
;While motivating people Balveer Singh said that if any official or member of staff asked for a bribe for any work, a complaint could be sent to the vigilance department.[news-dev]
;लोगों को प्रेरित करते हुए कहा कि यदि कोई अधिकारी या कर्मचारी किसी भी काम के लिए रिश्वत की मांग करता है तो उसकी शिकायत विजिलेंस विभाग से की जा सकती है
(defrule ask11
(declare (salience 5500))
(id-root ?id ask)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?id1)
(id-root ?id1 bribe)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAMga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp 	ask11   "  ?id "  mAMga_kara )" crlf))
)

;**************DEFAULT RULE**********************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 6-dec-2013
(defrule ask3
(declare (salience 0))
(id-root ?id ask)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp    ask3   "  ?id "  pUCa )" crlf))
)




;**************************COMMENTED RULE***************************
;(defrule ask2
;(declare (salience 4900))
;(id-root ?id ask)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
;(kriyA-subject ?id ?)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id pUCa))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp    ask2   "  ?id "  pUCa )" crlf))
;(assert (kriyA_id-subject_viBakwi ?id ko))
;)
;;They were asked that he be allowed to go   --- by manju

;default_sense && category=verb	pUCa	0
;"ask","VTI","1.pUCanA"
;Ask him about the ring .
;--"2.mAzganA"
;How much they are asking for their house?
;--"3.nimaMwraNa xenA"
;I asked him to come to the party .
;
;LEVEL 
;
;
;Headword : ask
;
;****************************Examples********************************:
;Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)6-dec-2013


;I've asked David to the party.[cambridge]
;I've asked David to come to the party.[cambridge]
;"Are you going to Muriel's party?" "No, I haven't been asked."[cambridge]
;Ian's asked us over for dinner next Friday.[cambridge]
;Ian's asked us round to dinner next Friday.[cambridge]
;Ian's asked us for dinner next Friday.[cambridge]
;In fact they've asked us to stay for the whole weekend.[cambridge]
;She asked me a question. [cambridge]
;She asked a question about Welsh history. [cambridge]
;She asked me about Welsh history. [cambridge]
;She asked about Welsh history. [cambridge]
;Ask the guard whether he knows.[cambridge]
;I asked the guard the time of the train's departure.[cambridge]
;I asked when the train would leave.[cambridge]
;"What time does the train leave?" I asked.[cambridge]
;If you need any help, please don't hesitate to ask.[cambridge]
;You should ask for some financial advice.[cambridge]
;You should ask your accountant to give you some financial advice. [cambridge]
;I asked to see my accountant. [cambridge]
;Ask him.[cambridge]
;I'd like to ask your advice/opinion on a financial matter.[cambridge]
;You have to ask permission to leave.[cambridge]
;The solicitor asked that her client be allowed to make a telephone call.[cambridge]
;We ask that any faulty goods be returned in their original packaging. [cambridge]

;**************************previous examples****************************

;"1.pUCanA"   'to put a question to'
;Ask his name.
;usakA nAma pUCo.
;May I ask you a question.
;kyA mEM Apa se eka praSna kara sakawI hUz?
;Did you ask the price?
;kyA wumane xAma pUCA?
;
;"2.mAzganA"   'to make a request'
;May I ask a favour?[of you]?
;kyA mEM Apa se sahAyawA mAzga sakawI hUz?
;How much are taheya asking for their house?
;vaha apane Gara ke lie kiwanA mAzga rahe hEM?
;
;"3.nimaMwraNa xenA" 'to invite'
;I asked him to come to the party.
;mEneM use pArtI meM Ane kA nimaMwraNa xiyA.
;
;"4.ummIxa karanA" 'to expect'
;You are asking too much of him-he's already working as hard as he can.
;wuma usase kuCa jyAxA hI ummIxa kara rahe ho,vaha pahale se hI jyAxA se jyAxA kAma kara   rahA hEM.
;
;
;ina cAroM arWo meM eka mUla arWa sAmane AwA hEM.yAnI yahAz"ask"Sabxa ke cAra arWa howe hue BI eka EsA Sabxa BI hE jisase eka sAmAnya arWa nikalawA hE.  
;yahAz ina sabakA mUla arWa 'pUCanA' AwA hE.jisake hisAba se anuvAxa kuCa EsA hogA.
;
;
;a.usakA nAma pUCo.
;b.kyA mEM Apa se eka praSna pUCa sakawI hUz?
;c.kyA wumane xAma pUCA?
;d.kyA mEM Apa se sahAyawA "mAzga" sakawI hUz <------pUCa sakawI hUz
;e.vaha apane Gara ke lie kiwanA "mAzga" rahe hEM?      <----pUCa rahe hEM             
;f.mEMneM use pArtI meM Ane ko nimaMwraNa xiyA. <---kahA<--pUCA
;
;yahAz praswuwa saBI uxAharaNo meM mUla arWa ke rUpa meM "pUCanA" A rahA hEM.isalie yahAz     sUwra "pUCanA" hI hogA.
;
;
;
;sawra : pUCanA`
;
;
