


;@@@ Added by Pramila(Banasthali University) on 22-11-2013
;His drive to achieve big things has made him work so hard.         ;sentence of this clip file
;उसकी बड़ी चीजों को प्राप्त करने की प्रबल प्रेरणा  से उसने इतना परिश्रम किया.
;He has a great drive to become rich.            ;sentence of this clip file
;उसमें धनी बनने के लिए प्रबल प्रेरणा है.
(defrule drive2
(declare (salience 4900))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ?id ?id1)
(id-root ?id1 achieve|rich)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prabala_preraNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive2   "  ?id "  prabala_preraNA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 22-11-2013
;Dry leaves driven away by the strong wind.               ;sentence of this clip file
;सूखी पत्तियाँ तेज हवा के द्वारा दूर ले जाई गई.
(defrule drive3
(declare (salience 4900))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 away)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive3   "  ?id "  le_jA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 22-11-2013
;The thief was driven back by the watch dogs.              ;sentence of this clip file
;चोर कुत्तों को देखते ही वापिस भाग गया.
(defrule drive4
(declare (salience 4900))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-karma  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive4   "  ?id "  BAga)" crlf))
)



;@@@ Added by Pramila(Banasthali University) on 23-11-2013
;By the end of the year, most of the occupying troops had been driven from the city.         ;cald
;वर्ष के अंत तक ,अधिकतर घेरे बंदी  किए हुए सैनिकों की टोली शहर से बाहर  निकाली जा चुकी थी .
(defrule drive6
(declare (salience 4900))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive6   "  ?id "  nikAla )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 23-11-2013
;For the second time in ten years, the government has driven the economy into deep and damaging recession.           ;cald
;दस सालों  में दूसरी बार ,सरकार ने अर्थव्यवस्था को गहरी और नुकसानदायक मंदी में धकेल दिया है. 

(defrule drive7
(declare (salience 4950))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(or(and(kriyA-into_saMbanXI  ?id ?id1)(id-root ?id1 recession))(and(kriyA-to_saMbanXI  ?id ?id1)(viSeRya-viSeRaNa  ?id1 ?id2)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xakela_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive7   "  ?id "  Xakela_xe )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 23-11-2013
;A post had been driven (= hit hard) into the ground near the tree.                ;cald
;पेड़ के पास का खम्भा जोर के धक्के के कारण जमीन पर गिर गया .
(defrule drive8
(declare (salience 5000))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(id-word ?id1 ground)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive8   "  ?id "  gira )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 23-11-2013
;In the end, it was his violent behaviour that drove her to leave home.             ;cald
;आखिरकार यह उसका हिंसात्मक व्यवहार ही था जिसने उसे घर छोड़ने के लिए मजबूर कर दिया 
(defrule drive9
(declare (salience 4900))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id ?id1)
(kriyA-anaBihiwa_subject  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majabUra_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive9   "  ?id "  majabUra_kara_xe )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 23-11-2013
;My mother-in-law has been staying with us this past week and she's driving me crazy.              ;cald
;मेरी सास पिछले हफ्ते से हमारे साथ रह रहीं हैं और वह मुझे पागल कर देंगीं .(गुस्से में )
;He leaves dirty clothes all over the floor and it's driving me mad.                  ;cald
;वह अपने गंदे कपड़े फर्श पर सब तरफ फ़ेंक देता है और यह  बात मुझे से पागल कर रहीं है. (बहुत गुस्सा दिला रहा है )
(defrule drive10
(declare (salience 4900))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(object-object_samAnAXikaraNa  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive10   "  ?id " kara)" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 23-11-2013
;They're driving to Scotland on Tuesday.          ;cald
;वे मंगलवार को कार से स्कॉटलैंड जा रहें हैं 
(defrule drive11
(declare (salience 4900))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(not(kriyA-object  ?id ?id2))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive11   "  ?id "  jA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 23-11-2013
;I drove my daughter to school.          ;cald
;मैंनें अपनी बेटी को कार से स्कूल छोड़ा  
(defrule drive12
(declare (salience 4800))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive12   "  ?id "  CodZa )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 23-11-2013
;Drive the nails into a plank.                ;sentence of this clip file
;कील को तख्ते में ठोंक दीजिए.
(defrule drive13
(declare (salience 4900))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(id-root ?id1 plank|wall|wood|bed|table|chair)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ToMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive13   "  ?id "  ToMka )" crlf))
)

(defrule drive14
(declare (salience 4000))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive14   "  ?id "  calA )" crlf))
)

(defrule drive15
(declare (salience 4000))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sEra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive15   "  ?id "  sEra )" crlf))
)

;@@@ Added by Pramila(BU) on 17-12-2013
;The factory-siren, announcing the morning break, screamed behind them as they drove away.
;कारखाने के भोंपू ने उनके पीछे जोर से बज कर सुबह के काम की समाप्‍ति की सूचना दी जिससे कि वे चलें जाएँ.
(defrule drive16
(declare (salience 4950))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 away)
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cale_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drive.clp	drive16  "  ?id "  " ?id1 "  cale_jA  )" crlf))
)

;@@@ Added by Pramila(BU) on 26-01-2014
;After a whole hour of driving, we fetched up back where we started.       [problem sentence]
;गाडी चलाने के पूरे एक घण्टे के बाद, हम वापस वहीं पहुँच गए जहाँ से हमने शुरू किया था . 
(defrule drive17
(declare (salience 4500))
(id-word ?id driving)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-of_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAdI_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive17   "  ?id "  gAdI_calA )" crlf))
)

;@@@ Added by Pramila(BU) on 04-02-2014
;There was protracted debate in the Senate over the recommendations of the Committee, ASUTOSH AND THEQUOTECALCUTTA UNIVERSITY but the 
;sheer driving forces of Sir Asutosh won the - acceptance of the Senate, which also framed regulations with a view to carry them 
;into execution.       [gyannidhi]
;समिति की सिफारिशों पर सिनेट में लम्बी बहस हुई परंतु सर आशुतोष की प्रेरित करने की शक्ति ने ही सिनेट की स्वीकृति हासिल की जिसने इसे लागू करने के लिए नियम भी बनाये।
(defrule drive18
(declare (salience 4900))
(id-word ?id driving)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-viSeRaNa  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_word_mng ?id ?id1 preriwa_karane_kI_Sakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng   " ?*wsd_dir* " drive.clp	drive18  "  ?id "  " ?id1 "  preriwa_karane_kI_Sakwi  )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 06-02-2014
;She was driven from Bombay to Pune in a chartered vehicle.              ;sentence given by Aditi Ma'am
;उसे एक किराए के वाहन में मुंबई से पुणे ले जाया गया.
(defrule drive19
(declare (salience 5000))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?)
(kriyA-to_saMbanXI  ?id ?)
;(viSeRya-in_saMbanXI  ?id2 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive19   "  ?id "  le_jA)" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 19-02-2014
;It is not a good idea to drive for hours without a rest.   [was verified sentence]
;viSrAma ke binA GaNtoM waka vAhana  calAnA acCA vicAra nahIM hE.
(defrule drive20
(declare (salience 5000))
(id-root ?id drive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?id1)
(kriyA-without_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAhana_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive20   "  ?id "  vAhana_calA )" crlf))
)

;@@@ Added by Pramila(BU) on 26-03-2014
; Driving at this speed on a banked road will cause little wear and tear of the tyres.   ;ncert
;इस चाल से ढालू सडक पर गाडी चलाने पर कार के टायरों की कम घिसाई होती है.
(defrule drive21
(declare (salience 4500))
(id-word ?id driving)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-at_saMbanXI  ?id ?id1)
(viSeRya-on_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAdI_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive21   "  ?id "  gAdI_calA )" crlf))
)

;@@@ Added by Pramila(BU) on 26-03-2014
;All those renewal renewed and valid driving licenses (DL) are ready where photos are donewere submitted by till up to the 30th of September, The rest will be provided by next week.   ;news-dev corpus
;रिन्युअल व पक्के ड्राइविंग लाइसेंस (डीएल) जिनकी फोटो ३० सितंबर तक हो चुकी है वह तैयार हो चुके हैं, बाकी लाइसेंस अगले सप्ताह मिलेंगे। 
(defrule drive22
(declare (salience 4500))
(id-word ?id driving)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id drAiviMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drive.clp 	drive22   "  ?id "  drAiviMga )" crlf))
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
;         -;Drive the nails into a plank.
;--"8.geMxa_jora_se_hita_karanA"
;         ---- < (SakwipUrvaka) BejanA < le jAnA < hAzkanA < calAnA
;He drove the ball into the rough.--- < BejanA (SakwipUrvaka) < le jAnA < hAzkanA < calAnA

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
