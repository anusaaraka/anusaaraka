
(defrule ring0
(declare (salience 5000))
(id-root ?id ring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Pona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ring.clp	ring0  "  ?id "  " ?id1 "  Pona_kara  )" crlf))
)


;Below sentence added by Anita-30.12.2013
;There was a ring at the door. [cambridge dictionary]
;दरवाज़े पर घंटी बजी ।
;Modified by Meena(8.6.10) added (kriyA-subject ?id ?id1)
;At midnight Uttama's telephone rings . 
(defrule ring1
(declare (salience 4700))
(id-root ?id ring)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ring.clp 	ring1   "  ?id "  baja )" crlf))
)

;"ring","VI","1.bajanA{GaNtiyoz_kA}"
;I will answer the telephone for you if it rings.
;The playground rang with children's shouts.
;The music was so loud it made my ears ring.
;


;Modified by Meena(8.6.10)  added (kriyA-object ?id ?id1)
;He rings the bell in the morning.
(defrule ring2
(declare (salience 4600))
(id-root ?id ring)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ring.clp 	ring2   "  ?id "  bajA )" crlf))
)

;@@@ Added by Anita-30.12.2013 
;He bought her a diamond ring. [cambridge dictionary]
;उसने हीरे  की एक अंगूठी खरीदी ।
(defrule ring3
(declare (salience 4800))
(id-root ?id ring)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kqxanwa_karma  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id azgUTI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ring.clp      ring3   "  ?id "  azgUTI )" crlf))
)
;@@@ Added by Anita -30.12.2013
;The game involved throwing metal rings over a stick. [cambridge dictionary]
;खेल में एक छड़ी पर धातु के छल्ले फेंकना शामिल किया गया ।
(defrule ring4
(declare (salience 4900))
(id-root ?id ring)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CallA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ring.clp      ring4   "  ?id "  CallA )" crlf))
)
;@@@ Added by Anita-30.12.2013
;The children sat in a ring around the teacher. [cambridge dictionary]
;बच्चे शिक्षक के चारों ओर एक गोले में बैठ गये ।
(defrule ring5
(declare (salience 5000))
(id-root ?id ring)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 teacher)
(kriyA-in_saMbanXI  ? ?id)
(kriyA-around_saMbanXI  ? ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ring.clp      ring5   "  ?id "  golA )" crlf))
)
;@@@ Added by Anita-30.12.2013
;I will give you a ring tomorrow. 
;मैं आपको कल फोन करूँगा ।
(defrule ring6
(declare (salience 5500))
(id-root ?id ring)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id teliPona))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ring.clp      ring6   "  ?id "  teliPona )" crlf))
)
;@@@ Added by Anita-30.12.2013
;There was a ring at the door.
;दरवाज़े पर घंटी बजी ।
(defrule ring7
(declare (salience 5575))
(id-root ?id ring)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 door)
(viSeRya-at_saMbanXI  ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GaMtI_baja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ring.clp      ring7   "  ?id "  GaMtI_baja )" crlf))
)

;################################default-rule#############################
;she always wears diamond ring.
;वह हमेशा हीरे की अँगूठी पहनती है । 
(defrule ring_default-rule-noun
;(declare (salience 4800))
(id-root ?id ring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id azgUTI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ring.clp      ring_default-rule-noun   "  ?id "  azgUTI )" crlf))
)
;@@@ Added by Anita-30.12.2013
;Ring the bell for school assembly. [old clp sentence]
;स्कूल -असेम्बली के लिए घंटी बजाओ।
(defrule ring_default-rule-verb
(id-root ?id ring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ring.clp      ring_default-rule-verb  "  ?id "  bajA )" crlf))
)
;"ring","N","1.azgUTI"
;she always wears diamond ring.
;--"2.CallA{cABI/nepakina_kA}"
;He keeps all his keys in a key-ring.    
;--"3.GerA/maMdala/cakra"
;He is an expert in blowing smoke-rings. 
;In intelligence dept. some people have made spy-ring.
;In circus spectators sit all around out side the circus-ring.
;Please put the kettle on the ring.





;"ring","VT","1.bajAnA{GaNtIz_kA}"
;Ring the bell for school assembly.
;Someone is ringing at the door.
;Her story may seem true but it rings false to me.
;My clock only rings the hours.      
;
;LEVEL 
;
;Headword : ring
;
;Examples -
;
;"ring","N" 
;
;Ravi gave Sunita a diamond ring for her birthday.
;ravi ne sunIwA ko usake janmaxina para eka hIre kI azgUTI xI.
;
;azgUTI<--CallA
;
;The child entered the swimming pool with an inflatable ring.
;baccA svimiMga-pUla meM havA-BarA gola-tyUba lekara uwarA
;
;gola-tyUba<---Calle_jEse_AkAravAlA<---rabadZa_kA_CallA
;
;He sat their blowing smoke rings with his cigarette.
;vaha apanI sigareta se Xuze ke Calle banAwA huA vahAz bETA WA.
;
;CallA
;
;She had dark rings round her eyes due to lack of sleep.
;na so pAne ke kAraNa usakI AzKoM ke cAroM ora kAle Xabbe padZa gae We
;
;cAroM_ora_Xabbe<---golAkAra <---Calle
;
;The lions performing in the ring looked very friendly.
;aKAdZe meM wamASA kara rahe Sera miwrawA se BarapUra laga rahe We.
;
;aKAdZA <---Suru meM aKAdZA golAkAra howA WA <---golAkAra GerA<--- GerA
;
;A spy ring was busted by the police.
;pulisa ne jAsUsoM ke eka giroha ko PodZa xiyA
;
;giroha <---samUha <---samUha kA GerA <---GerA
;
;"ring","V"
;
;--"1.GiranA"
;The area was ringed by a barbed wire fence.
;usa kRewra ko kaztIle wAroM ke bAdZe se cAroM ora se Gera xiyA WA.
;
;--"2.GeranA"
;Ring the correct answer.
;sahI uwwara ke cAroM ora GerA banAo
;
;--"3.gUzjanA"
;Her words rang hollow.
;usake SabxoM meM KAlIpana kI gUzja WI. <---AvAjZa_honA <---bajanA
;
;Rita left the room with his voice still ringing inher ears.
;kamare se nikalawe vakwa BI rIwA kI ke kAnoM meM usakI AvAjZa gUzja rahI WI. <--
;
;--"4.Pona_karanA"
;I'll ring you tonight.
;mEM Aja rAwa wumheM Pona karUMgI <---Pona_kI_GaMtI_bajAnA <---Pona kI GaMtI gUzjanA
;
;'ring' Sabxa kA sUwra 
;
;sUwra : CallA-[GerA]-bajAnA

;Additional Examples by Anita
;----------------------------
;The game involved throwing metal rings over a stick.
;खेल में छड़ी पर धातु के छल्ले फेंकना शामिल है ।
;The children sat in a ring around the teacher.
;बच्चे शिक्षक के चारों ओर एक गोले में बैठ गये ।
;He bought her a diamond ring.
;उसने उसके लिए एक हीरे की अँगूठी खरीदी ।
;I'll give you a ring tomorrow.
;मैं कल आपको फोन करूँगा ।
;There was a ring at the door.
;दरवाज़े पर घंटी बजी ।
;He gave a ring at the door.
;उसने दरवाजे पर घंटी बजाई ।
;She had dark rings a round her eyes from lack of sleep.
;कम सोने के कारण उसकी आँखों के चारों ओर काले घेरे हो गए थे।
;A diamond glittered on her ring finger.
;उसकी उँगली की अँगूठी पर एक हीरा चमक रहा है ।
;a key ring.
;चाबी का छल्ला ।
;curtain rings.
;पर्दे के छल्ले । 
;onion rings.
;प्याज के छल्ले ।
;The horses trotted round the ring.
;घोड़े गोले के चारों तरफ दौड़े ।
;The doorbell rang.
;दरवाज़े की घंटी बजी ।
;Anne's alarm clock rang for half an hour before she woke. 
;ऐने की एलार्म घड़ी उसके उठने से पहले आधा घंटे तक बजती रही ।
;I rang the bell but nobody came to the door. 
;मैंने घंटी बजाई लेकिन कोई भी दरवाज़े पर नहीं आया । 
;My ears are still ringing from the sound of the military band.
;मिलेट्री बैंड की आवाज़ से मेरे कानों में अभी भी गूँज रही है ।
;I ring home once a week to tell my parents I'm okay.
;मैं सप्ताह में एक बार घर पर फोन करता हूँ कहने के लिए कि मैं ठीक हूँ ।
;There's been an accident - can you ring for an ambulance?
;वहाँ एक दुर्घटना हुई है-क्या आप एम्बुलैंस के लिए फोन कर सकते हैं ।
;The boss rang  to say he'll be back at 4.30.
;बॉस ने यह कहने के लिए फोन किया था कि वे ४.३० बजे वापस आएंगे ।
;I rang round the airlines to find out the cheapest price. 
;मैं सस्ती कीमत पता लगाने के लिए लगातार हवाई कंपनी को फोन करता रहा ।
;Why don't you ring up Simon and ask him to the party?
;आप साईमन को  क्यों नहीं फोन करते हैं और उससे पूछते हैं कि पार्टी कब है ?
;The ringleaders were jailed for 15 years.
;सरगना को १५ साल के लिए जेल में बंद कर दिया गया था ।
