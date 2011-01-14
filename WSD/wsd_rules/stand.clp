;Added by Meena(10.6.10)
(defrule stand_for
(declare (salience 5000))
(id-root ?id stand)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) can)
(id-root =(+ ?id 1) for)
(kriyA-for_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1)  =(+ ?id 1) nirxiRta_kara ))
;(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stand.clp could_stand_for  "  ?id "   "(+ ?id  1)"  nirxiRta_kara  )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  stand.clp      stand_for0   "  ?id " kA )" crlf)
)
)






(defrule stand0
(declare (salience 5000))
(id-root ?id stand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id standing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sWAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  stand.clp  	stand0   "  ?id "  sWAI )" crlf))
)

(defrule stand1
(declare (salience 4900))
(id-root ?id stand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Kade_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stand.clp	stand1  "  ?id "  " ?id1 "  Kade_raha  )" crlf))
)

(defrule stand2
(declare (salience 4800))
(id-root ?id stand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id standing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sWAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  stand.clp  	stand2   "  ?id "  sWAyI )" crlf))
)

;"standing","Adj","1.sWAyI"
;Russia is one of the standing member of UN.
;--"2.ijjawa"
;He has a good standing in the society.
;--"3.ekaxama se kisI cIjZa kI SuruvAwa"
;He had a standing jump from Ist floor of the building.
;--"4.rahane kA samaya"
;My friendship with you should be long standing.
;
(defrule stand3
(declare (salience 4700))
(id-root ?id stand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id stEMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stand.clp 	stand3   "  ?id "  stEMda )" crlf))
)

;"stand","N","1.stEMda"
;One of the stand at cups fair had a good variety of cups.
;--"2.kataGarA"
;Witnesses must take the stand before telling something to court.
;--"3.xqDZamawa"
;Ram has a very firm stand on the issue of economic liberalization.
;--"4.addA"
;Appu Ghar has a taxi stand.
;
(defrule stand4
(declare (salience 4600))
(id-root ?id stand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KadZA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stand.clp 	stand4   "  ?id "  KadZA_ho )" crlf))
)

;"stand","V","1.KadZA_ho"
;--"2.KadZA_honA[rahanA]"
;Due to weakness he was unable to stand.
;We stood up in order to honour our chief guest.
;--"3.KadZA_karanA"
;We should stand the water filled bottles in refrigeration.
;--"4.rahanA"
;Once a great banyan tree stood here.
;we should stand firm on our opinions.
;--"5.honA"
;Our school building stands 50 m high.
;--"6.sahanA"
;No one should stand his /her insult.
;--"7.ke_liye_rupaye_xenA"
;We should be in operation to stand meals to our friends.
;
;LEVEL 
;
;
;Headword : stand
;
;Examples --
;
;"stand","V",KadA_honA"(maintain an upright position)
;You stand near the tree.
;peda ke pAsa Kade ho jAo
;He was so weak that he could not stand.
;vaha iwanA kamajZora WA ki KadZA nahIM ho sakawA WA
;We stood up in order to honour our chief guest.
;hama loga muKya awiWi ke sammAna ke liye KadZe rahe.
;
;--"2.raKanA"
;Don't stand cans of kerosene near the fire.
;mittI ke wela ke kEnsa Aga ke pAsa mawa raKo <--KadZA_kara ke raKanA<--KadA_karanA
;Once a great banyan tree stood here.
;kisI samaya yahAz para eka badZA baragaxa kA pedZa WA <--KadZA WA<--KadZA rahanA
;
;--"3.rahanA"
;we should stand firm on our opinions.            
;hameM apane vicAroM para xqDZa rahanA cAhiye.<--xqDZa honA<--sWira honA<--KadZe
;rahanA
;
;--"4.sWiwa_honA"(be situated or located)
;Here once stood a hamlet.
;yahAz pahale kaBI_eka gAvaz sWiwa_WA.  <-- sWiwa WA <--KadZA_WA
;
;
;--"5.kI_UzcAI_kA_honA"(be of a specific height)
;He stands six feet tall.
;vaha Ca: Puta lambA hE
;      ----< KadZI huyI sWiwi meM hone para vaha jZamIna se CaH Puta Upara hE <--KadZe huye honA hE
;Our school building stands 50 m high.
;hamArI skUla kI ImArawa pacAsa mItara UzcI hE
;<--50mI0 UzcI hE<--KadZI hE
;
;--"6.honA"(to be of a specified rank)
;He stands first in the class.
;vaha kakRA meM praWama hE 
;   ----< praWama hone kI sWiwi meM hE.
;
;--"7.jyoM_kA_wyoM_rahanA"(specific condition)
;The thermometer stood at 90 degrees
;        ----< niSciwa sWAna para sWiwa hE
;
;--"8.banA_rahegA"(will last)
;This house will stand for another century.
;yaha Gara eka Ora saxI waka banA rahegA.
;     ---< Gara cirakAla KadA rahegA 
;
;--"9.lAgU_rahanA"(remain valid or unaltered)
;The former conditions must stand 
;paCalI SarweM lAgU raheMgI
;    ----< pahalA Sarwa( sWiwa) rahanA hE
;
;--"10.sahanA"
;I cannot stand the pain
;mEM vexanA saha nahIM sakawA
;    ----< vexanA sahane kI sWiwi meM na honA.
;I can't stand hot weather. 
;mEM garama mOsama sahana nahIM kara sakawA.
;<--baraxASwa karanA<--KadZA nahIM raha sakawA
;
;--"11.Karca_xenA"(to bear the cost)
;Ravi stood Mohan a drink.
;ravi ne mohana ko eka driMka pilAyA <----mohana ke driMka kA Karca xiyA <-- mohana ke driMka kA Karca xene kI sWiwi meM rahA <--mohana ko isa sWiwi me raKA ki vaha driMka pI sake<-- sWiwi me honA
;He was kind enough to stand us a meal.
;vaha kAPI xayAlu WA jo hamAre KAne kA KarcA xiyA 
;<--KarcA uTAne ke liye wawpara honA<--KadZe honA
;
;--"12.ummIxavAra_honA"(for an office)
;He stood for parliament election
;vaha saMsaxa cunAva ke lie ummIxavAra WA(KadA)
;   ----< cunAva ke lie KadA hE
; 
;--"13.upalabXa_karAnA_xenA"
;The horse stands for breeding.(of a stallion)
;GodA prajanana ke lie upalabXa kiyA hE
;     
;                       
;"stand","N","1.addA"<--basa ke rukane kA sWAna<--KadZe hone kA sWAna
;There is a bus stand near the station.
;steSana ke pAsa eka basa addA hE 
;--"2.xarSaka_xIrGA"
;Spectators cheered the artists from the stand.
;xarSakoM ne xarSaka_xIrGA se kalAkAroM ko prowsAhiwa kiyA.
;--"3.kataGarA"
;Witnesses must take the stand before telling something to court.
;gavAhI vAle nyAyAlaya ko kuCa BI kahane se pahale kataGare meM avaSya KadZe hoM
;--"4.stEMda 
;One of the stands at the book fair had a good variety of books.
;kiwAboM ke mele meM eka stEMda para bahuwa sI viviXa prakAra kI kiwAbeM WIM
;--"5.niSciwa nirNaya"<--datA rahanA<--KadZA rahanA
;He has a firm stand on the issue of economic liberalization.
;ArWika uxArIkaraNake vivAxa para usakA nirNaya niSciwa WA
;
;nota:--uparyukwa 'stand'Sabxa ke saMjFA Ora kriyA ke saBI vAkyoM kA yaxi avalokana 
;     kareM wo yaha niRkarRa nikalawA hE ki samaswa arWoM ko 'KadZA honA [rahanA]
;    se jodZA jA sakawA hE lekina 'stEMda' Sabxa kA prayoga bola-cAla kI BARA meM
;    niyamiwa rUpa se prayoga meM lAyA jAwA hE awaH isa Sabxa ko'borrow'kiyA  
;    jA sakawA hE.isakA sUwra nimna prakAra liKa sakawe hEM
;
;    sUwra : stEMda[<sWiwa^KadZA_honA]/kataGarA 
;
;
