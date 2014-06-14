
;Added by Meena(13.11.09)
; ;we have taken both the relations (viSeRya-viSeRaNa ...) (samAsa_viSeRya-samAsa_viSeRaNa ..) ;for id and id2 because of the 1st wrong parse of the link parser.
;He took the right decision.
;He is the right person for the job .
(defrule right0
(declare (salience 5700))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id2 decision|way|time|place|person|people)
(or(subject-subject_samAnAXikaraNa  ?id1 ?id)(viSeRya-viSeRaNa ?id2 ?id)(samAsa_viSeRya-samAsa_viSeRaNa ?id2 ?id))   
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  right.clp      right0   "  ?id "  TIka )" crlf)
)
)


;Added by Meena(25.11.09)
;He is always right.
;Which one is right for me ?
;I thought it is right to resign .
(defrule right1
(declare (salience 5700))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  right.clp      right1   "  ?id "  TIka )" crlf)
)
)

;Modified by Meena(12.4.10)
;Added by Meena(13.11.09)
;She is fighting for her right.
;Everyone  has a right to education.
;What right have you got to blame me ? 
(defrule right2
;(declare (salience 5000))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-det_viSeRaNa ?id ?id1)(viSeRya-RaRTI_viSeRaNa ?id ?id1)(kriyA-object ?id1 ?id)(viSeRya-to_saMbanXI ?id  ?id1)
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  right.clp      right2   "  ?id "  aXikAra )" crlf)
)
)



;Added by Meena(13.11.09);we have taken both the relations (viSeRya-viSeRaNa ...) (samAsa_viSeRya-samAsa_viSeRaNa ..) for id and id2 because of the 1st wrong parse of the link parser. 
;He writes with his right hand.
;Go straight and take a right turn . 
;Place the books on the right side of the spects . 
;You follow the first turning on the right .
(defrule right3
(declare (salience 4500)) ;decrease salience by Anita
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-on_saMbanXI ?id2 ?id)(kriyA-to_saMbanXI ?id2 ?id)(viSeRya-viSeRaNa ?id1 ?id)(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  right.clp      right3   "  ?id "  xAzyA )" crlf)
)
)


;$$$ Modifed by Anita--10.3.2014
;What the government is proposing, encroaches on the rights of individuals. [By mail]
;सरकार जो प्रस्ताव रख रही है, वह व्यक्तियों के अधिकारों का अतिक्रमण करता है ।
(defrule right4
(declare (salience 4900))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to|of)
(viSeRya-of_saMbanXI  ?id ?) ;added relation by Anita-10.3.2014
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right4   "  ?id "  aXikAra )" crlf))
)


(defrule right5
(declare (salience 4700))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) after|before )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right5  "  ?id "  TIka )" crlf))
)


;Modified by Meena(5.4.10)
;You got three answers right . 
;Nothing seems to be going right for him nowadays . 
;;This is not the right road. [verified sentence]
; यह ठीक सड़क नहीं है ।
(defrule right7
(declare (salience 4400))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id1 ?id)(object-object_samAnAXikaraNa  ?id1 ?id)(kriyA-kriyA_viSeRaNa  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right7   "  ?id "  TIka )" crlf))
)


;Added by Meena(7.4.10)
;Please wait here for me, I will be right back . 
(defrule right_back8
(declare (salience 4500))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 back)
(or(kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka  ?id1 ?id)(kriyA-kriyA_viSeRaNa ?id1 ?id)(kriyA-upasarga ?id ?id1))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wuranwa_vApasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " right.clp  right_back8  "  ?id "  " ?id1 "  wuranwa_vApasa  )" crlf))
)


(defrule right9
(declare (salience 4000))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) club|restaurant|place)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right9   "  ?id "  uciwa )" crlf))
)

;Looking back, I think we did the right thing.[Gyan-Nidhi]
;पीछे देखते हुए मैं सोचता हूँ कि हमने सही चीज़ की ।
(defrule right10
(declare (salience 5100))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 2) be)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right10   "  ?id "  sahI )" crlf))
)





(defrule right11
(declare (salience 3100))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) about|to|by )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right11   "  ?id "  TIka )" crlf))
)




;$$$ Modified by Anita-20.3.2014
;When you hold a pencil in front of you against some specific point on the background a wall and look ;at the pencil first through your left eye A closing the right eye and then look at the pencil through ;your right eye B closing the left eye you would notice that the position of the pencil seems to change ;with respect to the point on the wall. [ncert sentence]
;जब आप किसी पेंसिल को अपने सामने पकडते हैं और पृष्ठभूमि (माना दीवार) के किसी विशिष्ट बिन्दु के सापेक्ष पेंसिल को पहले अपनी ;बायीं आँख A से (दायीं आँख बन्द रखते हुए) देखते हैं, और फिर दायीं आँख B से (बायीं आँख बन्द रखते हुए), तो आप पाते हैं, कि ;दीवार के उस बिन्दु के सापेक्ष पेंसिल की स्थिति परिवर्तित होती प्रतीत होती है. [translated by Shuchita ]
;Salience reduced by Meena(14.11.09)
(defrule right12
(declare (salience 5200)) ;salience increase from 3100 to 5200 by Anita-20.3.2014
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?vi ?id) ; added relation by Anita-20.3.2014
(id-cat_coarse ?id adjective)
(id-root ?vi eye|hand|leg|nose|chick|brain|ear|side) ; added by Anita-20.3.2014
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right12   "  ?id "  xAzyA )" crlf))
)

;"right","Adj","1.xAzyA"
;Place the books on the right side of the spects.
;--"2.sahI"
;He is the right person for the job.
;
;given_word=rightly && category=adverb	$TIka_TIka)

;------------------------------------ Default rules -----------------------------------
;Salience reduced by Meena(13.11.09)
(defrule right6
(declare (salience 0))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp    right6   "  ?id "  aXikAra )" crlf))
)

;"right","N","1.aXikAra"
;You have no right to stop me from going to bombay.
;--"2.sahI"
;The children should be able to distinguish between right && wrong.
;

(defrule right13
(declare (salience -100))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp     right13   "  ?id "  xAzyA )" crlf))
)


;Salience reduced by Meena(14.11.09)
(defrule right14
(declare (salience 0))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right14   "  ?id "  TIka )" crlf))
)


;"right","Adv","1.TIka"
;Nothing seems to be going right for him nowadays.
;--"2.wuranwa"
;Please wait here for me, I will be right back.
;
;LEVEL 
;
;
;Headword : right
;
;Examples --
;
;"right","N","1.sahI"
;You should know the difference between right && wrong. 
;sahI Ora galawa meM kyA Paraka hE wumhe mAlUma honA cAhiye.
;
;"2.aXikAra" 
;What right have you got to blame me?
;wumhe kyA aXikAra hE muJe xoSI TaharAne kA ?
;
;"3.nyAya/iMsAPa"
;The property belongs to her as of right.
;nyAya ke wOra para jAyaxAxa usakI hE <--nyAyAnusAra <--sahI honA
;
;"4.xAhinA aMga yA BAga" 
;You follow the first turning on the right. 
;wuma xAzyI waraPa praWama modZa kA anusaraNa karo. <--sIXA <--sahI
;
;"right","V","1.TIka ho jAnA(yA KadZA) kara xenA 
;The calf stumbled then miraculously righted itself 
;baCadZA gira gayA lekina camawkArI DZaMga se apane Apa KadZA ho gAyA. <--sahI ho gayA hE 
;
;"2.sahI karanA"
;The fault will probably right itsself,if you give it time. 
;yaxi wuma ise samaya xo,wo galawI SAyaxa svayaM suXara jAegI.
;
;"right","Adj","1.xAzyA"
;Place the books on the right side of the spects.
;kiwAboM ko caSme ke xAzyI waraPa raKa xo.
;--"2.sahI"
;He is the right person for the job.
;vaha bilkula sahI AxamI hE usa kArya ke liye.
;
;"right","Adv","1.TIka"
;The wind was right in our faces. 
;havA TIka hamAre ceharoM para laga rahI WI <--sahI
;--"2.wuranwa
;Please wait here for me, I will be right back.
;kqpayA merA yahAz inwajAra karo,mEM wuranwa vApasa AwA hUz. <--sIXe  
;
;
;sUwra : sahI-aXikAra
;
