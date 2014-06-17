;$$$ Modified by Anita
;It fetched him a clip round the ear. [By mail ]
;इससे उसके कान के पास ज़ोर का तमाचा पड़ा ।
(defrule round0
(declare (salience 5000))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id) ; Added relation by Anita
(id-cat_coarse =(+ ?id 1) determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  round.clp 	round0   "  ?id "  ke_pAsa )" crlf))
)

;"round","Adj","1.gola"
;$$$ Modified by Anita changed meaning from 'gola' to 'golAkAra'
;She has a beautiful round mirror.                           
;उसके पास एक सुन्दर गोलाकार शीशा है ।
(defrule round1
(declare (salience 4900))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golAkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  round.clp 	round1   "  ?id "  golAkAra )" crlf))
)
(defrule round2
(declare (salience 4800))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 go)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -)) ;removed two dashes by Anita
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  round.clp 	round2   "  ?id "  - )" crlf))
)

;@@@ Added by Anita--3.3.2014
;The Moon goes round the Earth. [Cambridge dictionary] 
;चंद्रमा पृथ्वी की परिक्रमा करता है ।
(defrule round3
(declare (salience 4800))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 go)
(kriyA-kqxanwa_karma  ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parikramA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  round.clp 	round3   "  ?id "  parikramA_kara )" crlf))
)

;@@@ Added by Anita---13.12.2013
;Grace poked her head round the door.
;ग्रेस ने अपना सिर दरवाजे के पीछे से सिर निकाला ।
(defrule round4
(declare (salience 4800))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ? ?id)
;id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICe_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  round.clp 	round4   "  ?id "  pICe_se )" crlf))
)
;default_sense && category=noun	vqwwa	0
;"round","N","1.vqwwa"
;Cut the dough into small rounds for making biscuits.      
;--"2.xOra"
;The next round of the peace talks between india && pakistan will start next month.
;He fired several rounds at the thief.
;She has eaten two rounds of cheese sandwich.
;--"3.pArI"
;The match only lasted three rounds.
;--"4.bArI"
;Now its my round to buy drinks for you all.
;--"5.GerA"
;The children sat in a round.
;--"6.bOCAra"
;The police fired several rounds at the thieves.
;He got a big round of aqpplause from the audience.       
;--"7.PerA"
;The doctor saw the patient on his daily round.
;

;@@@ Added by Anita--3.3.2014
;They built a high fence round their house. [old clp sentence] [using 60 no. parser]
;unhoMne apane Gara ke cAroM ora UzcA bAdZA banavAyA.
(defrule round5
(declare (salience 4950))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(kriyA-round_saMbanXI  ?kri   ?)
(kriyA-object  ?kri ?id1)
(id-root ?id1 fence)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAroM_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  round.clp    round5   "  ?id "  cAroM_ora )" crlf))
)

;@@@ Added by Anita-21.3.2014
;In order to get an approximate idea of the number we may round off the number a to 1 for a5 and to 10 for 5a10. [ncert]
;सङ्ख्या की सन्निकट अवधारणा बनाने के लिए हम इसका पूर्णाङ्कन कर सकते हैं, यानि (a≤5) होने पर इसे 1 और (5<a≤10) होने पर 10 मान सकते हैं ।
;The rules for rounding off numbers to the appropriate significant figures are obvious in most cases. [ncert]
;जिन संख्याओं में एक से अधिक अनिश्चित अङ्क होते हैं, उनके अभिकलन के परिणाम का पूर्णाङ्कन किया जाना चाहिए ।
(defrule round_off6
(declare (salience 4950))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 off)
(kriyA-upasarga  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrNAMkana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " round.clp  round_off6  " ?id ?id1 "    pUrNAMkana_kara  )" crlf))
)

;@@@ Added by Anita-1.4.2014
;These should be justified by the data and then the arithmetic operations may be carried out; otherwise ;rounding errors can build up. [ncert]
;इनका आंकड़ों के द्वारा तर्कसंगत तरीके से या फिर अंकगणितीय आपरेशनों के द्वारा हल निकाला जा सकता है  अन्यथा ये रॉउन्डिंग एररस का निर्माण कर सकते हैं ।
(defrule round7
(declare (salience 5100))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 error)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rAundiMga_erarsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " round.clp  round7  " ?id ?id1 "    rAundiMga_erarsa  )" crlf))
)


;#####################################default-rule##############################
;$$$ Modified by Anita changed meaning 'golAkAra' to 'golA' 
;The children sat in a round. [ old clp sentence ] [verified sentence]
;बच्चे गोले में बैठे ।
(defrule round_default-rule-noun
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  round.clp    round_default-rule-noun  "  ?id "  golA )" crlf))
)

;"round","VTI","1.gola_banAnA"
;Make a round shape of the object. [old clp sentence ]
;Round the lips while making clear sound. 
(defrule round_default-rule-verb
(declare (salience 4600))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gola_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  round.clp    round_default-rule-verb   "  ?id "  gola_banA )" crlf))
)

;@@@ Added by Anita-1.4.2014
;The earth rotates once every twentyfour hours and revolves round the sun once in a year. [ncert]
;पृथ्वी 24 घण्टे में एक बार अपनी अक्ष के परितः घूमती है तथा वर्ष में एक बार सूर्य के चारों ओर घूमती है ।
(defrule round_default-rule-preposition
(declare (salience 4700))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_cAroM_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  round.clp    round_default-rule-preposition   "  ?id "  ke_cAroM_ora )" crlf))
)
;He went round the building.

;
;LEVEL 
;Headword : round
;
;Examples --
;
;"round","Adj","1.gola"
;She has a beautiful round mirror.
;usake pAsa eka sunxara gola SISA hE.
;--"2.pUrNa"
;Ravi paid him the round sum of money.
;ravi ne use pUre pEse xe xiye.
;
;"round","N","1.vqwwa"
;Cut the dough into small rounds for making biscuits.
;biskita bAnAne ke liye Ate ko Cote-Cote vqwwoM meM kAto.
;--"2.xOra"
;The next round of the peace talks between India && Pakistan will start next mon
;th.
;BArawa Ora pAkiswAna ke bIca SAMwi vArwA kA agalA xOra agale mahIne Suru hogA.
;She has eaten two rounds of cheese sandwich.
;vaha cIjZa sENdavica ke xo xOra(xo bAra) KA cukI hE
;--"3.pArI"
;The match only lasted three rounds.
;mEca kevala wIna pArI calA
;--"4.bArI"
;Now its my round to buy drinks for you all.
;wumhAre liye peya KarIxane kI aba merI bArI hE.
;--"5.GerA"
;The children sat in a round.
;bacce eka Gere meM bETe.
;--"6.bOCAra"
;The police fired several rounds at the thieves.
;pulisa ne (goliyoM_kI) kaI bOCAreM barasAIM.
;He got a big round of applause from the audience.
;SrowAoM ne usake Upara wAliyoM kI bOCAra kI.
;--"7.PerA"
;The doctor saw the patient on his daily round.
;apane xEnika Pere para dOYktara ne marIjZoM ko xeKA.
;
;"round","Adv","1.gola_GUmawA_huA"
;They were dancing round in circles.
;ve GeroM meM gola_GUmawe_hue nAca_rahe_We.
;--"2.GUma_kara"
;The seconds hand of my watch is not coming round.
;merI GadZI kI sekaMda kI suI GUma_kara nahIM A_rahI/ nahIM GUma_rahI.
;Going round the field will be longer.
;mExAna se GUmakara jAnA lambA padZegA.
;--"3.cAroM_ora"
;They built a high fence round their house.
;unhoMne apane Gara ke cAroM ora UzcA bAdZA banavAyA.
;People were standing all round the park.
;loga pArka meM cAroM ora KadZe We.
;The news was passed round rather fast.
;samAcAra cAroM ora jalxI hI PElA xiyA gayA.
;--"4.mudZa_kara"   <----sira_GumAkara
;She kept looking round expecting him to appear at any moment.
;kisI BI kRaNa usake Ane kI ASA meM vaha mudZa-mudZa kara xeKawI rahI
;--"5.vApisa"
;The monsoons will come round.
;varRAqwu vApisa AegI.
;Don't worry, your mother will be round by evening.
;cinwA nahIM karo, wumhArI mAz SAma waka vApisa A jAegI.
;
;"round","Prep","1.cAroM_ora"
;The moon moves round the earth.
;--"2.xUsarI_ora{GUma_kara}"
;
;"round","VTI","1.gola_banAnA"
;Round the lips while making an 'u' sound.
;
;'u' kA uccAraNa karane ke liye oToM ko gola banAo.
;
;
;ukwa uxAharaNoM se 'round' kA eka arWa jo spaRta howA hE vaha 'golAkAra' kA hE.
;anya arWa isI se prajaniwa hue lagawe hEM.
;
;anwarnihiwa_sUwra ;
;
;            
;            gola
;       (Akqwi)| 
;              |
;          ----------
;         ||  golAkAra ||------ vqwwa-(vqwwa_ke_bAhara_kA_hissA)GerA--(vqwwa_
;          ----------   (vaswu)    pUrA_kara_ke_Pira_AnA)pArI/xOra/bArI Axi
;             |
;             |(kriyA)
;             |
;          golAkAra_karanA ----|
;                          |
;                          |(viSeRawA)
;                          |
;                       cAroM_ora_karanA-mudZa_kara_vApisa_AnA-GUmanA
;
;sUwra : golAkAra`
