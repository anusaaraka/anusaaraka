;--- Commented by Nandini(6-5-14)
;(defrule lead0
;(declare (salience 5000))
;(id-root ?id lead)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id leading )
;(id-cat_coarse ?id adjective)
;=>
;(retract ?mng)
;(assert (id-wsd_word_mng ?id muKya))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  lead.clp  	;lead0   "  ?id "  muKya )" crlf))
;)

;"leading","Adj","1.muKya"
;He is a leading political thinker of the times. 
;--"2.praWama sWAna meM"
;He is the leading lady in this episode.
;
;
(defrule lead1
(declare (salience 4900))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lagA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lead.clp	lead1  "  ?id "  " ?id1 "  lagA_ho  )" crlf))
)

;There is a bathroom leading off with the bedroom in this house.
;isa Gara meM snAnaGara SayanakakRa ke sAWa lagA huA hE
(defrule lead2
(declare (salience 4800))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prAraMBa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lead.clp	lead2  "  ?id "  " ?id1 "  prAraMBa_kara  )" crlf))
)

;She led off the discussion with an annual report.
;usane bahasa kI SuruAwa vArRika riporta se kI
(defrule lead3
(declare (salience 4700))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lalacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lead.clp	lead3  "  ?id "  " ?id1 "  lalacA  )" crlf))
)

;She led us on to believe that we would be paid for our work.
;usane hameM yaha kahakara PusalAyA ki hameM apane kAma ke lie mehanawAnA xiyA jAegA


;$$$--- Modified by Nandini(6-5-14)
;A path led up the hill.[OLAD]
(defrule lead4
(declare (salience 4600))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 para_jA));meaning change by Nandini
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lead.clp	lead4  "  ?id "  " ?id1 "  para_jA  )" crlf))
)

;
;Pencil has lead in it.
(defrule lead5
(declare (salience 4500))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse =(- ?id 1) preposition)
(id-word =(- ?id 1) ~to) 
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp 	lead5   "  ?id "  sIsA )" crlf))
)

;$$$ --- Modified by Nandini(5-5-14)
;Added by sheetal
;Lead and tin are malleable metals.
(defrule lead5-a
(declare (salience 4500))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(kriya-object ?id1 ?id)
;(id-root ?rt metal)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp      lead5-a   "  ?id "  sIsA )" crlf))
)

;$$$ ---- Modified by Nandini(5-5-14)
;Lead and tin are malleable metals.
;sIsA Ora tina AGAwa varXanIya yA kUtya XAwu hEM.
(defrule lead6
(declare (salience 4400))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(conjunction-components  ?id1 ?id ?id2)
(subject-subject_samAnAXikaraNa  ?id1 ?id3)
(id-root ?id3 metal)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp 	lead6   "  ?id "  sIsA )" crlf))
)

;"lead","N","1.newqwva/sIsA"
;--"2.newqwva"
;He has given the lead && others may follow it. 
;--"3.baDZawa"
;His lead is now more than 10,000. 
;--"4.muKya_BUmikA{nAtaka_iwyAxi_meM}"
;He has played the lead in a film on Sardar Patel. 
;--"5.surAga"
;The lead led to the arrest of the criminal. 
;--"6.lIda{wAra}"
;There is nothing wrong with the VCR. Something has gone wrong with the lead causing disturbance in the monitor.
;--"7.sIsA"
;Pencil has lead in it.
;
(defrule lead7
(declare (salience 4300))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArga_xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp 	lead7   "  ?id "  mArga_xiKA )" crlf))
)

;@@@--- Added by Nandini(5-5-14)
;She leads a rich and varied life. [from mail]
;vaha eka sampanna Ora vaiviXyapurNa jIvana vyawiwa karawI hE.
(defrule lead8
(declare (salience 4300))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 life)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyawiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp 	lead8   "  ?id "  vyawiwa_kara )" crlf))
)

;@@@--- Added by Nandini(5-5-14)
;The wire led to a speaker.[OLAD]
;wAra spikara ko judA.
(defrule lead9
(declare (salience 4300))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 wire)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id juda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp 	lead9   "  ?id "  juda )" crlf))
)

;@@@--- Added by Nandini(5-5-14)
;The pipe leading from the top of the water tank is leaking. [OLAD]
;pAnI taMkI ke sarvocca sWAna se jAnevAlA pAipa chu rahA hE.
(defrule lead10
(declare (salience 4350))
(id-root ?id lead)
(id-word ?id leading)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
;(id-root ?id1 top)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp 	lead10   "  ?id " jAnevAlA )" crlf))
)


;@@@--- Added by Nandini(5-5-14)
;The track led us through a wood.[OLAD]
(defrule lead11
(declare (salience 4350))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-through_saMbanXI  ?id ?id1)(kriyA-to_saMbanXI  ?id ?id1))
(id-root ?id1 wood|conclusion)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp 	lead11   "  ?id " le_jA )" crlf))
)

;@@@--- Added by Nandini(5-5-14)
;Eating too much sugar can lead to health problems.[OLAD]
;jyAxA cInI KAnA svAsWya samasyAoM kA kAraNa_bana sakawI hE.
(defrule lead12
(declare (salience 4350))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(viSeRya-viSeRaka  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAraNa_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp 	lead12   "  ?id " kAraNa_bana )" crlf))
)

;@@@--- Added by Nandini(5-5-14)
;Which door leads to the yard?[OLAD]
;kOna sA xaravAjA ANgaNa ki ora jAwA hE?
(defrule lead13
(declare (salience 4350))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 door)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp 	lead13   "  ?id " jA )" crlf))
)

;@@@--- Added by Nandini(7-5-14)
;The situation is far worse than we had been led to believe.[OLAD]
;hama mAnane ke liye bAXya kiye gaye We usase bhi hAlawa Ora KarAba hE. 
(defrule lead14
(declare (salience 4350))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAXya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp 	lead14   "  ?id " bAXya_ho )" crlf))
)

;@@@--- Added by Nandini(7-5-14)
;The department led the world in cancer research.[OLAD]
;viBAga kEMsara saMSoXana meM viSva meM Age hE.
(defrule lead15
(declare (salience 4350))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp 	lead15   "  ?id " Age_ho )" crlf))
)

;@@@--- Added by Nandini(7-5-14)
;The champion is leading by 18 seconds. [OLAD]
;vijewA 18 sekanda se Age hE.
(defrule lead16
(declare (salience 4350))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp 	lead16   "  ?id " Age_ho )" crlf))
)

;@@@--- Added by Nandini(7-5-14)
;Who will lead the party in the next election? [OLAD]
;agale cunAva meM pArtI kA newqwva kOna karegA?
(defrule lead17
(declare (salience 4350))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-in_saMbanXI  ?id1 ?id2)
;(id-root ?id2 election)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id newqwva_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp 	lead17   "  ?id " newqwva_kara )" crlf))
)

;@@@--- Added by Nandini(7-5-14)
;It's your turn to lead. [OLAD]
;cAla chalane kI ApakI bArI hE.
(defrule lead18
(declare (salience 4350))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAla_chalanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lead.clp 	lead18   "  ?id " cAla_chalnA )" crlf))
)

;@@@--- Added by Nandini(7-5-14)
;He is easily led away by other's opinions. [hinKoja]
;vaha anya kI rAya se AsAnI se praBAviwa huA hE.
(defrule lead19
(declare (salience 4900))
(id-root ?id lead)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praBAviwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lead.clp	lead19  "  ?id "  " ?id1 "  praBAviwa_ho  )" crlf))
)

;We lead the way in space technology.[OLAD]; parse problem
;
;"lead","V","1.mArga_xiKAnA"
;He led me to his room. 
;--"2.mArga_milanA"
;The trail of blood on the road led the police to the criminal. 
;--"3.praBAviwa_karanA[honA]"
;He is easily led away by other's opinions. 
;--"4.vyawIwa_karanA"
;Many people lead a miserable life due to poverty. 
;--"5.Age_honA"
;This candidate is leading by 10,000 votes. 
;--"6.cAla_Suru_karanA{wASa_Axi_meM}"
;He led a heart. 
;--"7.newqwva_karanA"
;The captain led his soldiers from the front.
;
;LEVEL 
;Headword : lead
;
;Examples --
;
;"lead","V","1.newqwva karanA"
;The captain led his soldiers to the front.
;kapwAna ne apane sipAhiyoM kA sImA kI ora newqwva kiyA.
;--"2.le_jAnA"
;He led me to his room.
;vaha muJe apane kamare waka le gayA.
;--"3.mArga xiKAnA"
;The trail of blood on the road led the police to the criminal.
;sadZaka para banI KUna kI lakIra ne pulisa ko aparAXI waka pahuzcane kA mArga xiKAyA.
;--"4.praBAviwa karanA[honA]"
;He is easily led away by other's opinions.
;vaha xUsaroM ke vicAroM se jalxI hI praBAviwa ho jAwA hE.
;--"5.vyawIwa karanA"
;Many people lead a miserable life due to poverty.
;garIbI ke kAraNa bahuwa se loga kaRtakara jIvana vyawIwa kara rahe hEM.
;--"6.Age honA"
;This candidate is leading by 10,000 votes.
;yaha prawyASI 10,000 votoM se Age hE.
;--"7.cAla_Suru_karanA{wASa_Axi_meM}"
;He led a heart.
;usane pAna se cAla Suru kI.
;
;"lead","N","1.newqwva"
;The government organizations should give a lead in anti-corruption drive.
;BraRtAcAra ke viruxXa ladZAI meM sarakArI saMsWAoM ko newqwva karanA cAhiye.
;--"2.prAraMBa"
;He has given the lead & others may follow it.
;newqwva vaha kara rahA hE bAkI loga usakA anusaraNa kareM.
;--"3.baDZawa"
;His lead is now more than 10,000.
;usakI baDZawa aba 10,000 se aXika hE.
;--"4.muKya BUmikA{nAtaka iwyAxi meM}"
;He has played the lead in a film on Sardar Patel.
;usane saraxAra patela para banI eka Pilma meM muKya BUmikA niBAI hE.
;--"5.surAga"
;The lead led to the arrest of the criminal.
;surAga kI vajaha se aparAXI pakadZA gayA.
;--"6.lIda{wAra}"
;
;There is nothing wrong with the VCR. Something has gone wrong with the lead caus
;ing disturbance in the monitor.
;
;vI.sI.Ara. meM kuCa BI KarAba nahIM hE. 'lIda' meM kuCa KarAba ho gayA hE jisake kAraNa mOYnItara meM gadZabadZI A rahI hE.
;--"7.sIsA"
;Pencil has lead in it.
;pEMsila meM sIsA howA hE.
;
;
;ukwa uxAharaNoM meM 'lead' kA pramuKa arWa 'newqwva_karanA' uBara kara AwA hE.
;'newqwva_karanA' yAni 'mArga_xiKAnA', 'mArga_xiKAne' meM svayaM 'Age_honA'. 
;mArga_xiKAne se mArga para le jAnevAlA arWa AwA hE. Ora lejAnevAlA Age howA hE awaH Age honA arWa judZa jAwA hE. newqwva karanA se Upara xiye uxAharaNoM meM Aye SeRa arWa
;kEse judZe hEM yaha nimna anwarnihiwa sUwra meM xeKiye -
;
;
;anwarnihiwa sUwra ; 
;
;                       
;                           newqwva_karanA (kriyA) --- newqwva (saMjFA)
;                              |              
;                              |
;                           mArga_xiKAnA
;                              |
;                              |
;                           SuruAwa_karanA ------------ prAraMBa                 
;                              |
;                              |
;                   ----------Age_honA <--------- mArga
;                   |          |           |            
;                   |          |           |           
;                   |    (karwA)pramuKa_BUmikA -------|    
;                   |              |    |      |----|---------|
;          (kiwanI xUrI se Age hE)  |    |           |         |
;                  baDZawa            |   vyawIwa_karanA  lIda(wAra)  surAga
;                                  |
;                                praBAviwa_karanA
;
;
;
;Upara xiye anwarnihiwa sUwra se yaha spaRta hE ki ukwa uxAharaNoM ke prAyaH saBI arWa bIjArWa 'newqwva_karanA' se judZe hEM, mAwra 'sIsA' alaga hE. awaH isakA sUwra hogA -
;
;sUwra : newqwva_karanA[>le_jAnA]/sIsA 
