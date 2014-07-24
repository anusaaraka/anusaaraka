
(defrule drop0
(declare (salience 5000))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CUta_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop0  "  ?id "  " ?id1 "  CUta_jA  )" crlf))
)

;I dropped back from the crowd due to pain in my leg.
;mEM apanI tAzga ke xarxa kI vajaha se BIdZa se pICe raha gayA
(defrule drop1
(declare (salience 4900))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yUz_hI_bina_bulAe_kisI_se_milane_cale_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop1  "  ?id "  " ?id1 "  yUz_hI_bina_bulAe_kisI_se_milane_cale_jA  )" crlf))
)

;His office is near to my house && he often drops by.
;usakA APisa mere Gara ke pAsa hE Ora vaha prAya: hI yahAz(Gara) bina bulAe calA AwA hE
(defrule drop2
(declare (salience 4800))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 akasmAwa_A_tapaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop2  "  ?id "  " ?id1 "  akasmAwa_A_tapaka  )" crlf))
)

;He often drops in if he happens to be passing.
;vaha jaba BI yahAz se gujZarawA hE,akasmAwa A tapakawA hE
(defrule drop3
(declare (salience 4700))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop3  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;Just drop the cd's in at my house if you get time.
;yaxi wumhe samaya mile wo sI dI mere Gara pe CodZa xenA
(defrule drop4
(declare (salience 4500))           ;modified by Pramila(Banasthali University) on 2-11-2013
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GatanA_yA_Gata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop4  "  ?id "  " ?id1 "  GatanA_yA_Gata_jA  )" crlf))
)

;$$$ Modified by Pramila(Banasthali University) on 22-11-2013 -- Added 'kriyA-vAkyakarma' relation and added kriyA should be 'tired'
;Your work progress has dropped off during the last two months.
;wumhArI kArya kRamawA piCale xo mahInoM se Gata rahI hE
(defrule drop5
(declare (salience 4600))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id2 off)
(kriyA-upasarga ?id ?id2)
(kriyA-vAkyakarma  ?id1 ?id)
(id-word ?id1 tired)   
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 so_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop5  "  ?id "  " ?id2 "  so_jA  )" crlf))
)

;$$$ Modified by Pramila(Banasthali University)  -- Replaced 'kriyA-object' with kriyA-to_saMbanXI
;She was so tired that she dropped off in the class.
;vaha iwanI WakI huI WI ki kakRA meM hI so gaI
(defrule drop6
(declare (salience 4700))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-to_saMbanXI  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_ko_se_kahIM_CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop6  "  ?id "  " ?id1 "  kisI_ko_se_kahIM_CodZa  )" crlf))
)

;Can you please drop me off to the office as i'm getting late.
;kyA wuma muJe APisa CodZa sakawe ho kyoMki muJe xera ho rahI hE
;$$$ Modified by Pramila(Banasthali University) on 22-11-2013 -- Added 'kriyA-samakAlika_kriyA' relation
;They dropped her after she had a child out of wedlock.          ;sentence of this file
(defrule drop7
(declare (salience 4300))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(or(and(id-word ?id1 out)(kriyA-upasarga ?id ?id1))(kriyA-samakAlika_kriyA  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop7  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;She dropped out of the job as she was not getting enough salary there.
;usane vaha nOkarI CodZa xI kyoMki use vahAz paryApwa vewana nahIM mila rahA WA

;The student dropped the course, deciding to take it next year instead of this year.

;$$$ modified by Pramila(BU) on 11-01-2014 ; added 'kriyA-karma' relation and "proposal" word in the list
;The Fellows of the University found the arguments so convicing that the proposal to attach new conditions to the award was dropped.
;विश्वविद्यालय के अधि-सदस्यों से इस तर्कों को इतना सही पाया कि इस पुरस्कार के साथ नई शर्तों को जोड़ने का प्रस्ताव छोड़ दिया गया।

(defrule drop8
(declare (salience 4500))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 course|subject|proposal)
(or(kriyA-object ?id ?id1)(kriyA-karma  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drop.clp      drop8   "  ?id "  CodZa_xe )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 22-11-2013
;He dropped dead on the squash court at the age of 43.                   ;cald
;४३ वर्ष की आयु में स्क्वाश कोर्ट में अचानक उसकी मृत्यु हो गयी .

(defrule drop9
(declare (salience 4500))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(subject-subject_samAnAXikaraNa  ?id1 ?id2)
(id-word ?id2 dead)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drop.clp 	drop9   "  ?id "  ho_jA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 22-11-2013
;Just drop me a line when you've decided on a date.                  ;cald
;जब तुम तारीख का निश्चय कर लो मुझे एक पंक्ति लिख देना .
(defrule drop10
(declare (salience 4500))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 line)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liKa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drop.clp 	drop10   "  ?id "  liKa_xe )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 22-11-2013
;Margaret dropped a hint that she'd like to come to the party.                   ;cald
;मार्गरेट ने इशारा दिया कि वह भी पार्टी में आना पसंद करेंगी .
(defrule drop11
(declare (salience 4500))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 hint)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drop.clp 	drop11   "  ?id "  xe )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 22-11-2013
;The cow dropped her calf this morning.          ;sentence of this file
;गाय ने आज सुबह अपने बछड़े को जन्म दिया.
(defrule drop12
(declare (salience 5000))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 cow|buffalo)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id janma_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drop.clp 	drop12   "  ?id "  janma_xe )" crlf))
)


(defrule drop13
(declare (salience 4200))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drop.clp 	drop13   "  ?id "  girA )" crlf))
)

(defrule drop14
(declare (salience 4100))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drop.clp 	drop14   "  ?id "  gira )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 06-12-2013
;His voice dropped to a whisper.       ;oald
;उसकी आवाज कानाफूसी करने के लिए मन्द हो गई.
;The wind dropped, so we had to row back home.
;हवा मन्द हुई,इसलिए हमें घर उल्टा जाना पडा .
(defrule drop15
(declare (salience 4700))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 wind|voice|speed)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manxa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drop.clp 	drop15   "  ?id "  manxa_ho )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 06-12-2013
;She dropped her voice.      ;oald
;उसने अपनी आवाज कम की.
;You must drop your speed in built-up areas.   ;oald
;तुम्हे निर्मित क्षेत्रो में अपनी गति कम करनी चाहिए.
(defrule drop16
(declare (salience 4700))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 voice|speed)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drop.clp 	drop16   "  ?id "  kama_kara )" crlf))
)


;@@@ Added by Pramila(BU) on 09-01-2014
;They dropped the matter with disdain.              ;shiksharthi
;उन्होंने मामले को तिरस्कारपूर्वक रफा-दफा कर दिया.
(defrule drop17
(declare (salience 5000))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 matter)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raPA-xaPA_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drop.clp 	drop17   "  ?id "  raPA-xaPA_kara_xe )" crlf))
)

;@@@ Added by Pramila(BU) on 25-03-2014
;His jaw dropped when he heard who had won.  ;m-w
;उसका मुँह खुला रह गया  जब उसने सुना कि कौन जीता . 
(defrule drop18
(declare (salience 5000))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 jaw|mouth)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KulA_raha_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drop.clp 	drop18   "  ?id "  KulA_raha_jA )" crlf))
)

;default_sense && category=verb	girA	0
;"drop","VT","1.girAnA"
;Don't drop the dishes
;--"2.nikAla_xenA"
;Drop him from the Republican ticket.
;--"3.bawAnA"
;Drop a hint
;--"4.CodZanA"
;Drop a lawsuit
;The Giants dropped 1.of their first 13
;They dropped her after she had a child out of wedlock
;--"5.janma_xenA"
;The cow dropped her calf this morning
;
;
;LEVEL 
;Headword : drop
;
;Examples --
;
;"drop","N","1.bUzxa"
;He poured a few drops of medicine into the glass of water.
;usane xavA kI kuCa bUzxeM pAnI ke glAsa meM dAlIM.
;--"2.girAvata"
;A drop of 57 points on the Dow Jones index
;dO jonsa kI iMdEksa meM 57 pAInta kI girAvata
;They expected the drop would be successful
;unako ASA WI ki yaha girAvata saPala hogI.
;--"3.giranA"
;It was a miracle that he survived the drop from that height
;yaha eka acamBA hI hE ki vaha iwanI UzcAI kA giranA Jela gayA
;
;"drop","VI","1.giranA"
;The bombs are dropping on enemy targets
;bama xuSmanoM ke addoM para gira rahe hEM.
;Stock prices dropped
;stOYka xAma gira gaye
;--"2.bolane_laganA" <--eka BARA bolawe-bolawe xUsarI BARA meM cale jAnA <--xUsarI BARA meM ludZaka jAnA <--xUsarI BARA meM gira jAnA
;She dropped into army jargon.
;vaha senA kI jZubAna bolane lagI
;
;"drop","VT","1.girAnA"
;Don't drop the dishes
;barwana mawa girA xenA.
;--"2.nikAla_xenA"
;Drop him from the Republican ticket
;usako ripablikana tikata-sUcI se nikAla xo. <--nikAla xenA yAni unako sWAna se girA xenA
;The Giants dropped 11 of their first 13
;jAyantsa ne apane 13 meM se 11 ko nikAla xiyA. 
;--"3.bawAnA"
;Drop a hint
;eka hinta bawAo <--sUcanA kI eka bUzxa girAnA
;--"4.CodZanA"
;Drop a lawsuit
;mukaxamA CodZa xo <--pICe CodZa xenA 
;
;
;Upara xiye uxAharaNoM meM 'drop' Sabxa ke saMjFA meM 'bUzxa' Ora kriyA meM 'giranA' xo pramuKa arWa xiKa rahe. ye xono arWa BI paraspara sambanXiwa hEM. kisI xrava kA eka CotA aMSa jaba 'girawA' hE wo vaha 'bUzxa' kahalAwA hE. aMgrejZI kI prakqwi ke anurUpa 'bUzxa'
;saMjFA Sabxa kA 'kriyA' prayoga BI samBava hE. hinxI meM 'giranA' sAmAnya Sabxa hE waWA bUzxa ke girane ko 'tapakanA' kahawe hEM. awaH isakA anwarnihiwa sUwra hogA ;
;
;anwarnihiwa sUwra ;
;
;bUzxa -bUzxa kA tapakanA -giranA[girAnA] -girAvata --gira ke CUta jAnA --nikAlA jAnA 
;
;
;sUwra : bUzxa`[>giranA`{kriyA}]
