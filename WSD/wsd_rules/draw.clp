;"drawing","N","1.ciwrakArI"
;He has a very good hand at drawing 
;He takes classes for architectural drawing
;
;
;$$$ Modified by Pramila(banasthali University) on 26-11-2013 [meanig changed from "pAsa_jA" to "pAsa_A"]
(defrule draw0
(declare (salience 4500))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 on)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAsa_A))   
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw0  "  ?id "  " ?id1 "  pAsa_A  )" crlf))
)


;She was getting afraid as the night drew on.
;jEse -jEse rAwa pAsa A rahI WI vaha dara rahI WI


;$$$ modified by Pramila(BU)on 26-11-2013 
;Added  kriyA-vAkyakarma and viSeRya-kqxanwa_viSeRaNa relations and changed the meaning from 'drAPZta_kAta' to  'nikAla'
;I have some gold saved which i can draw on in an emergency.
;mere pAsa kuCa sonA bacA hE jise mEM ApAwakAla meM nikAla sakawI hUz
(defrule draw1
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 on)
(kriyA-vAkyakarma  ?id2 ?id)            
(viSeRya-kqxanwa_viSeRaNa  ?id3 ?id2)       
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw1  "  ?id "  " ?id1 "  nikAla  )" crlf))
)

;@@@ Added by Pramila(banasthali University) on 26-11-2013
;She had a wealth of experience to draw on.               ;cald
;उसके पास कुछ भी करने के लिए अनुभवों का खजाना (सम्पति) था.
(defrule draw2
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(saMjFA-to_kqxanwa  ?id1 ?id)
(kriyA-upasarga  ?id ?id2)
(id-root ?id2 on)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 kuCa_BI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw2  "  ?id "  " ?id2 "  kuCa_BI_kara  )" crlf))
)

;$$$ modified by Pramila(BU)on 26-11-2013 
;added kriyA-on_saMbanXI relation removed kriyA-upasarga relation
(defrule draw3
(declare (salience 4900))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)                  
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KIMca_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw3  "  ?id "  " ?id1 "  KIMca_le  )" crlf))
)

;He drew on his gloves.
;usane apane xaswAne(hAWoM se) KIMca lie



;Added by Meena(21.5.11)
;It also helps draw out toxins and excess oils.
(defrule draw4
(declare (salience 4800))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 out)
(kriyA-object ?id ?id2)
(or(kriyA-kqxanwa_karma  ?kri ?id)(kriyA-vAkyakarma  ?kri ?id))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KIMca_nikAla))
(assert (make_verbal_noun ?id))
(assert (kriyA_id-object_viBakwi ?kri  meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp  draw4  "  ?id "  " ?id1 "  KIMca_nikAla  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  draw.clp      draw4   "  ?kri " meM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  draw.clp         draw4   "  ?id " )" crlf)
)
)


;$$$ modified by Pramila(BU)on 26-11-2013
; object may be saMKyA-saMKyA relation or object as money
;Alison drew some money out of her account to pay for our trip.          ;cald
;एलिसन ने हमारी यात्रा के लिए अपने खाते से कुछ पैसे निकाले.
;She drew out ten thousand for her friend.
;usane apane miwra ke lie bEMka se xasa hajZAra rupae nikalavAe
(defrule draw5
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)                
(or(id-root ?id1 money)(saMKyA-saMKyA  ?id1 ?id2))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bEMka_se_pEsA_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw5  "  ?id "  " ?id1 "  bEMka_se_pEsA_nikAla  )" crlf))
)

;@@@ Added by Pramila(banasthali University) on 26-11-2013
;Ravi drew Hari out onto the verandah.
;ravi hari ko bAhara barAmxe meM le gayA.
(defrule draw6
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 out)
(kriyA-onto_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw6  "  ?id "  " ?id1 "  le_jA  )" crlf))
)


;$$$ modified by Pramila(BU)on 26-11-2013 
; added kriyA-kriyArWa_kriyA relation
(defrule draw7
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 out)
(kriyA-object ?id ?)
(kriyA-kriyArWa_kriyA  ?id2 ?id)               
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saMkoca_Kawma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw7  "  ?id "  " ?id1 "  saMkoca_Kawma_kara  )" crlf))
)

;She tried to draw me out on the stage.
;usane maMca para merA saMkoca_Kawma_karane kI koSiSa kI

;$$$ modified by Pramila(BU)on 26-11-2013 ; added kriyA-for_saMbanXI relation and removed kriyA-upasarga relation
(defrule draw8
(declare (salience 4900))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?id1)                       
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lambA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw8  "  ?id "  " ?id1 "  lambA_kara  )" crlf))
)


;The director drew the movie out for another hour with boring songs.
;nirxeSaka ne ukawAhata Bare gAne dAlakara Pilma ko bevajaha lambA kara xiyA



;She drew up outside my house.
;vaha mere Gara ke bahAra rukI.
(defrule draw9
(declare (salience 4500))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw9  "  ?id "  " ?id1 "  rUka  )" crlf))
)

;$$$ modified by Pramila(BU)on 26-11-2013  ; added 'saMjFA-to_kqxanwa' relation
;I drew up my chair to watch the ludo-game(kind of an indoor game)
;mE apanI kursI ko Kela xeKane ke lie pAsa lAyA

(defrule draw10
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-object  ?id ?id2)
(saMjFA-to_kqxanwa  ?id2 ?id3)    
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAsa_lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw10  "  ?id "  " ?id1 "  pAsa_lA  )" crlf))
)



;@@@ Added by Pramila(BU)on 20-01-2014 
;Draw up a chair and I'll tell you all about it.
;कुर्सी पास लाओ और मैं सब कुछ बताता हूँ.
(defrule draw11
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(AjFArWaka_kriyA  ?id)    
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAsa_lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw11  "  ?id "  " ?id1 "  pAsa_lA  )" crlf))
)


;$$$ modified by Pramila(BU)on 26-11-2013 
; added obj as child|student and changed the meaning from 'krama_xe' to 'KadZA_kara'
(defrule draw12
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-object ?id ?id2)
(id-root ?id2 child|student)                  
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KadZA_kara))    
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw12  "  ?id "  " ?id1 "  KadZA_kara  )" crlf))
)

;The teacher drew up the children in line.
;SikRaka ne baccoM ko lAine meM KadZA kiyA


(defrule draw13
(declare (salience 4100))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KAkA_wEyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw13  "  ?id "  " ?id1 "  KAkA_wEyAra_kara  )" crlf))
)

;@@@ Added by Pramila(banasthali University) on 26-11-2013
;I've drawn up a list of candidates that I'd like to interview.   ;cald
;मैंने उन उम्मीदवारों की सूची बना ली है जिनके मैं साक्षात्कार लेना चाहूँगा.
(defrule draw14
(declare (salience 4900))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-object  ?id ?id2)
(id-root ?id2 list)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw14  "  ?id "  " ?id1 " banA  )" crlf))
)


;@@@ Added by Pramila(banasthali University) on 26-11-2013
;She drew off a pint of beer.           ;sentence of this file
;usane biyara kA eka piMta nikAlA.
(defrule draw15
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-root ?id1 off)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  draw.clp  	draw15   "  ?id "  nikAla )" crlf))
)

;@@@ Added by Pramila(banasthali University) on 20-01-2014
;She has drawn the information from many different sources.           ;sentence of this file
;usane kaI srowoM se sUcanA nikAlI hE.
(defrule draw16
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  draw.clp  	draw16   "  ?id "  nikAla )" crlf))
)

;@@@ Added by Pramila(banasthali University) on 20-01-2014
;I'd seen them together so often I drew the logical conclusion that they were husband and wife.   ;cald
;मैंने उन्हें इतनी बार एकसाथ देखा था कि मैंने यह नतीजा निकाला कि वे पति-पत्नी थे.
;Suddenly he drew a gun/knife and held it to my throat.           ;cald
;अचानक उसने बंदूक निकाली और मेरे गले पर तान दी.
(defrule draw17
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 conclusion|gun|knife|blood)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  draw.clp  	draw17   "  ?id "  nikAla )" crlf))
)

;@@@ Added by Pramila(banasthali University) on 26-11-2013
;She leaned forward to stroke the dog but quickly drew back when she saw its teeth.   ;cald
;वह कुत्ते को थपथपाने के लिए आगे की ओर झुकी पर उसके दाँतों को देखकर फौरन पीछे हट गयीं.
(defrule draw18
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-root ?id1 back)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_hata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw18  "  ?id "  " ?id1 " pICe_hata_jA  )" crlf))
)

;@@@ Added by Pramila(banasthali University) on 26-11-2013
;His novels draw heavily on his childhood.          ;cald
;उसके उपन्यासों ने  बचपन में ही उसे बहुत सी जानकारी दी.
(defrule draw19
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(kriyA-kriyA_viSeRaNa  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnakArI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  draw.clp  	draw19   "  ?id "  jAnakArI_xe )" crlf))
)


;@@@ Added by Pramila(banasthali University) on 26-11-2013
;They tried to draw me into their argument but I refused.               ;cald
;उन्होंने मुझे अपनी बहस में शामिल होने के लिए प्रयास किया,लेकिन मैंने इंकार कर दिया.
(defrule draw20
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(kriyA-into_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAmila_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  draw.clp  	draw20   "  ?id "  SAmila_kara )" crlf))
)

;@@@ Added by Pramila(banasthali University) on 26-11-2013
;The train slowly drew into the station.        ; cald
;ट्रेन धीमी गति से स्टेशन पर आई.
(defrule draw21
(declare (salience 4900))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  draw.clp  	draw21   "  ?id "  A )" crlf))
)

;@@@ Added by Pramila(banasthali University) on 26-11-2013
;As we drew alongside the black car, I suddenly recognized my ex-boyfriend at the wheel.  ;cald
;जैसे ही हम काले रंग की कार के समीप आए, अचानक मैंने पुराने दोस्त को कार चलाते हुए देख लिया.
(defrule draw22
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-alongside_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samIpa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  draw.clp  	draw22   "  ?id "  samIpa_A )" crlf))
)

;@@@ Added by Pramila(banasthali University) on 26-11-2013
;Montgomery drew level with Greene in the 100 metres final, but never passed him.   ;cald
;मांटगोमरी ने सौ मीटर के फाइनल में तो ग्रीनी से बराबरी कर ली,पर उसे कभी आगे नही जा पाया..
(defrule draw23
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
(kriyA-in_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbarI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  draw.clp  	draw23   "  ?id "  barAbarI_kara )" crlf))
)


;@@@ Added by Pramila(banasthali University) on 26-11-2013
;Her speech last night in the Senate drew an angry response .    ;cald
 ;पिछली रात सेनेट में उसके भाषण ने लोगों में आक्रोश उत्पन्न कर दिया. 
(defrule draw24
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(viSeRya-viSeRaNa  ?id1 ?id2)
(id-word ?id1 response)
(id-word ?id2 angry)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpanna_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  draw.clp  	draw24   "  ?id "  uwpanna_kara_xe )" crlf))
)

;@@@ Added by Pramila(banasthali University) on 26-11-2013
;You can't really draw a comparison between the two cases - they're entirely different.  ;cald
;तुम दोनों केस के बीच में सचमुच कोई तुलना नही कर सकते-दोनों बिल्कुल भिन्न हैं.
;It's sometimes very difficult to draw a clear distinction between the meanings of different words. ;cald
;कभी-कभी अलग शब्दों में एकदम भिन्नता करना बहुत मुश्किल होता है.
(defrule draw25
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 comparison|distinction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draw.clp 	draw25   "  ?id "  kara )" crlf))
)

;@@@ Added by Pramila(banasthali University) on 26-11-2013
;The train drew onto the station.        ; sentence of this file
;ट्रेन धीमी गति से स्टेशन पर गई.
(defrule draw26
(declare (salience 4900))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-onto_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  draw.clp  	draw26   "  ?id "  jA )" crlf))
)


(defrule draw27
(declare (salience 3000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draw.clp 	draw27   "  ?id "  KIMca )" crlf))
)


(defrule draw28
(declare (salience 4000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id drawing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciwrakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  draw.clp  	draw28   "  ?id "  ciwrakArI )" crlf))
)

;@@@ Added by Pramila(banasthali University) on 26-11-2013
;The match ended in a draw.          ;sentence of this file
;मैच ड्रॉ में समाप्त हुआ.
(defrule draw30
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
(kriyA-subject  ?id1 ?id2)
(id-root ?id2 match|game)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id droY))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draw.clp 	draw30   "  ?id "  droY )" crlf))
)

;@@@ Added by Pramila(banasthali University) on 26-11-2013
;The show was a big draw.             ;sentence of this file
;प्रदर्शन भीड़ को एकत्रित करने हेतु कार्य था.
(defrule draw31
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 show|programme)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIdZa_ko_ekawriwa_karane_hewu_kArya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draw.clp 	draw31   "  ?id "  BIdZa_ko_ekawriwa_karane_hewu_kArya )" crlf))
)

(defrule draw32
(declare (salience 3500))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAtarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draw.clp 	draw32   "  ?id "  lAtarI )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 17-01-2014
;The match was drawn.      ;shiksharthi
;मैच बराबर हो गया.
(defrule draw33
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-karma  ?id ?id1)
(id-root ?id1 match|game)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draw.clp 	draw33   "  ?id "  barAbara_ho_jA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 17-01-2014
;England drew their game against France.       ;oald
;इंगलैंड ने फ्रांस के विरूद्ध खेल बराबर किया.
(defrule draw34
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 match|game)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draw.clp 	draw34  "  ?id "  barAbara_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 17-01-2014
;England drew against France.       ;oald
;इंगलैंड ने फ्रांस के विरूद्ध खेल में बराबर किया.
;England drew with France.        ;oald
;इंगलैंड ने फ्रांस के साथ खेल में बराबर किया.
(defrule draw35
(declare (salience 4900))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-with_saMbanXI  ?id ?id1)(kriyA-against_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kela_meM_barAbara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draw.clp 	draw35   "  ?id "  Kela_meM_barAbara_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 22-01-2014
;Regulations were therefore drawn up for residence of students.       ;gyannidhi
;अतः छात्रों के आवास के बारे में भी नियम बनाये गये।
(defrule draw36
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-for_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw36  "  ?id "  " ?id1 "  banA  )" crlf))
)

;@@@ Added by Pramila(BU) on 12-03-2014
;I will draw a tree and you can colour it in.   [by mail]
;मैं एक पेड़ बनाऊँगा और तुम इसमें रंग कर सकते हो.
(defrule draw37
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(conjunction-components  ?id2 ?id ?id1)
(id-root ?id1 colour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draw.clp 	draw37   "  ?id "  banA )" crlf))
)



;"draw","N","1.lAtarI/nambara_nikalanA"
;The draw for the third round of the cricket tournament.
;When is the draw for the weekly lottery?
;--"2.drOY{prawiyogiwA_jisakI_hAra_jIwa_kA_nirNaya_na_ho}"
;The match ended in a draw. 
;--"3.BIdZa_ko_ekawriwa_karane_hewu_kArya_yA_GatanA"
;The show was a big draw. 
;--"4.xerI_se_kisI_vaswu_ko_samaJa_pAnA"  
;She is a bit slow on the draw.     
;
;LEVEL 
;Headword : draw
;
;Examples --
;
;"draw","VI","1.KIMcanA"
;Draw a line here.
;yahAz eka lAina KIMco.
;Draw the curtains.
;parxe KIMco.
;This chimney draws very well.
;yaha cimanI bahuwa acCe se (XuzA) KIMcawI hE.
;He drew my attention to a point which I had overlooked.
;usane merA XyAna usa binxu kI ora KIMcA jo muJase CUta gayA WA.
;His madness drew passers-by to the scene.
;usake pAgalapana ne rAswe se gujZara rahe logoM ko GatanAsWala kI ora KIMca liyA.
;Draw the name of the winner in a raffle.
;rEPala meM vijewA kA nAma KIMco
;Draw a deep breath
;gaharI sAzsa KIMco
;--"2.ciwra_banAnA"
;Draw a chicken.
;eka murge kA ciwra KIMco.
;--"3.[bAhara]_nikAlanA"
;Please draw this cork out of the bottle.
;kqpayA isa kOYrka ko bOYtala ke bAhara nikAlo/KIMco.
;She drew off a pint of beer.
;usane biyara kA eka piMta nikAlA.
;Draw a card
;eka pawwA nikAlo
;The archers were drawing their bows
;wIraMxAjZa apane XanuRa nikAla rahe We.
;What conclusions did you draw from my report?
;merI riporta se wumane kyA niRkarRa nikAlA?
;She has drawn the information from many different sources.
;usane kaI srowoM se sUcanA nikAlI hE.
;--"4.KIMca_nikAlanA"
;Draw water from a well.
;kuez se pAnI KIMca nikAlo.
;--"5.lenA{nikAla}"
;The participants in the experiment were drawn from a representative population.
;prayoga meM prawiBAgI eka prawiniXi-AbAxI se liye gaye hEM.<--cuna kara KIMcanA
;--"6.le_jAnA"
;Ravi drew Hari out onto the verandah.
;ravi hari ko bAhara barAmxe meM le gayA.<--BIdZa se KIMca kara le jAnA
;--"7.jAnA{niSciwa_xiSA_meM}"
;The train drew onto the station.
;trena steSana para gayI.
;--"8.nirASa_ho_jAnA"
;She was drawn to despair.
;vaha nirASa ho gayI. <--nirASA meM KiMca jAnA
;--"9.liKanA"
;The will was drawn when he was 89 years old
;jaba vaha 89 varRa ke We waba vasIyawa liKI gayI WI.
;Draw a cheque.<---lAina KIMcanA
;ceka liKo.
;--"10.pAnI_kI_niSciwa_sawaha"
;This boat draws 70 feet.
;yaha bota 70 Puta gahare pAnI meM cala sakawI hE.
;yaha bota 70 Puta gaharAI waka KiMcawI hE.
;--"11.KIMcakara_baDZAnA"
;Draw steel
;lohe ko KIMco.
;
;"draw","N","1.nambara_nikalanA{lAtarI_meM}"
;The draw for the third round of the cricket tournament.
;kriketa tUrnAmeMta ke wIsare rAuMda kA nambe nikAlanA.
;When is the draw for the weekly lottery?
;sApwAhika lAtarI kA nambe kaba nikalegA? <--nikAlanA 
;--"2.drOY{prawiyogiwA_jisakI_hAra_jIwa_kA_nirNaya_na_ho}"
;The match ended in a draw.
;mEca drOY meM samApwa huA.<--barAbarI waka KIMca le jAnA
;--"3.ekawriwa_karanevAlA_kArya_yA_GatanA"
;The show was a big draw.
;So meM bahuwa BIdZa AyI. <---So bahuwa logoM ko KIMca kara apanI ora lA sakA
;--"4.samaJa_pAnA"
;She is a bit slow on the draw.
;usako samaJane meM samaya lagawA hE.<--usako sahI bAwa nikAlane meM samaya lagawA hE <--kahI bAwa meM se sahI bAwa ko KIMcanA 
;
;
;sUwra : KIMcanA`^ciwra




;************************rules were removed*****************************
;three duplicate rules are removed
;	if  'kriyA-upasarga' and upasarg is up then KAkA_wEyAra_kara 


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_draw24
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(subject-subject_samAnAXikaraNa ?id1 ?id2)
(id-word ?id1 response)
(id-word ?id2 angry)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpanna_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " draw.clp   sub_samA_draw24   "   ?id " uwpanna_kara_xe )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_draw24
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(object-object_samAnAXikaraNa ?id1 ?id2)
(id-word ?id1 response)
(id-word ?id2 angry)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpanna_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " draw.clp   obj_samA_draw24   "   ?id " uwpanna_kara_xe )" crlf))
)
