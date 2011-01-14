
(defrule round0
(declare (salience 5000))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_golAkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  round.clp 	round0   "  ?id "  ke_golAkAra )" crlf))
)

;He went round the building.
(defrule round1
(declare (salience 4900))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  round.clp 	round1   "  ?id "  gola )" crlf))
)

;"round","Adj","1.gola"
;She has a beautiful round mirror.                           
;
(defrule round2
(declare (salience 4800))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 go)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ---))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  round.clp 	round2   "  ?id "  --- )" crlf))
)

(defrule round3
(declare (salience 4700))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golAkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  round.clp 	round3   "  ?id "  golAkAra )" crlf))
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
(defrule round4
(declare (salience 4600))
(id-root ?id round)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gola_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  round.clp 	round4   "  ?id "  gola_banA )" crlf))
)

;"round","VTI","1.gola_banAnA"
;Make a round shape of the object.
;Round the lips while making clear sound.      
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
