
(defrule drive0
(declare (salience 5000))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sEra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive0   "  ?id "  sEra )" crlf))
)

(defrule drive1
(declare (salience 4900))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAra_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive1   "  ?id "  kAra_calA )" crlf))
)

;We drove to Newyork.
(defrule drive2
(declare (salience 4800))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive2   "  ?id "  calA )" crlf))
)

;default_sense && category=noun	sEra{kAra_meM}	0
;"drive","N","1.sEra{kAra_meM}"
;He took her wife out for a drive.
;--"2.geMxa_meM_hita_lagAnA"  
;She tried backhand drive in tennis. 
;--"3.ramaNIka_sWala_se_jAne_vAlA_mArga"   
;In mumbai,Marine Drive is famous for its scenic beauty.
;--"4.UrjasviwA_karmaSakwi"   
;He has a great drive to become rich.
;--"5.yAnwrikawva_Sakwi"  
;He prefers a car with left-hand drive. 
;--"6.prabala_preraNA"
;His drive to achieve big things has made him work so hard.
;
;LEVEL 
;
;
;Headword :  drive         drove 
;
;Examples --
;
;`drive' Sabxa ke viviXa prayoga--
;-------------------------  
;
;"drive","V","1.calAnA"
;She herself drives her car.
;--"2.hAzkanA"
;         ---- < calAnA 
;Drive cattles into a field.
;--"3.le_jAnA"
;         ---- < hAzkanA < calAnA   
;Dry leaves driven away by the strong wind.
;--"4.BagAnA"
;         ---- < BagAnA < hAzkanA < calAnA
;The thief was driven back by the watch dogs.
;--"5.bAXya_karanA"
;         ---- < le jAnA (xiSA viSeRa kI ora) < hAzkanA < calAnA
;Hunger && poverty drove him to steal.
;--"6.preriwa_karanA"
;         ---- < le jAnA buxXi ko (xiSA viSeRa kI ora) < hAzkanA < calAnA
;A person driven by jeolousy is capable of doing any work.
;--"7.ToMkanA/GusA_xenA"
;         ---- < BejanA (SakwipUrvaka) < le jAnA < hAzkanA < calAnA
;Drive the nails into a plank.
;--"8.geMxa_jora_se_hita_karanA"
;         ---- < (SakwipUrvaka) BejanA < le jAnA < hAzkanA < calAnA
;He drove the ball into the rough.
;
;"drive","N","1.sEra"
;         ---- < gAdI Axi kA calAnA < calAnA
;He took her wife out for a drive.
;--"2.geMxa_meM_hita_lagAnA"
;         ---- < (SakwipUrvaka) BejanA < le jAnA < hAzkanA < calAnA
;She tried backhand drive in tennis.
;--"3.UrjasviwA_karmaSakwi"
;         ---- < le jAnA (xiSA viSeRa kI ora) < hAzkanA < calAnA
;He has a great drive to become rich.
;--"4.prabala_preraNA"
;        ---- < le jAnA buxXi ko (xiSA viSeRa kI ora) < hAzkanA < calAnA
;His drive to achieve big things has made him work so hard.
;-------------------------------------------------------------
;
;sUwra : hAzkanA`[<calAnA`]         
;--------------
; "drove" 
;
;    `drive' isa aMgrejI Sabxa ke Upara xiye gaye viBinna prasaMgoM meM 
;viBinna arWa howe hEM . ye saBI arWa calAne ke arWa se viswAra pAye hue
;hEM . Upara xI gaI tappaNiyoM se yaha spaRta howA hE . calAne se hinxI meM
;BI viBinna arWa grahaNa kiye jAwe hEM .
;
;-- calane kA preraNArWaka prayoga calAnA hE . isame preraNA xvArA calAyA
;jAwA hE . preraNA xene ke kaI swara soce jA sakawe hEM, jina swaroM ke lie
;anya aneka prayoga BARA meM hEM . una viSeRa prayoga meM hI arWa-viswAra huA
;hE . hAzkanA, le jAnA, BagAnA, preriwa karanA ye kriyAyeM spaRtawaH calAne
;ke anwargawa xIKawI hEM . anyoM ko EsA socA jA sakawA hE--
;
;-- bAXya karanA . iwara rAswe banxa kara kevala eka rAswA CodA jAwA hE, jahAz 
;calAne kA icCuka calAnA cAhawA hE . 
;
;-- ToMkanA/GusA xenA . icCiwa xiSA meM kisI vaswu ko SakwipUrvaka calAne
;ko ToMkane yA GusA xene ke rUpa meM xeKA jA sakawA hE .
;
;-- geMxa ko jora se hita karanA . calAne meM le jAne kA BAva hE . 
;kAraNa- calAne se hAzkanA, hAzkane se le jAnA socA gayA hE . le jAne se Bejane 
;kA arWa-viswAra . vahAz se SakwipUrvaka kisI cIja ko BejanA arWAw hita
;karanA socA jA sakawA hE .
;
;-- sEra . prAyaH kisI sAXana(gAdI Axi) ko calAwe hue ukwa kriyA kI 
;sampannawA kI jAwI hE .
;
;-- urjasviwA karmaSakwi . kinhI ko viSeRawaH janawA ko calAnA(preraNA Axi 
;xvArA) Urjasviwa karmaSakwi hI kahalAwI hE . 
;           (anyawra tippaNiyoM se spaRta hE)
;
;
