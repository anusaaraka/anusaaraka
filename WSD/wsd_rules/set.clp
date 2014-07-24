
(defrule set0
(declare (salience 5000))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id setting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jamAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  set.clp  	set0   "  ?id "  jamAnA )" crlf))
)

;given_word=setting && word_category=noun	$vAwAvaraNa)

;"setting","N","1.vAwAvaraNa"
;The golf field is situated in perfect setting.
;--"2.vinyAsa"
;The cooker has several temperature settings.
;--"3.jamAvata"
;Can you give me your diamond ring with gold setting.
;--"4.saMgIwa"
;Rehaman's setting for vandemataram is very popular.
;
;
(defrule set1
(declare (salience 4900))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 free)
(kriyA-free_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukwa_kiyA_gayA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " set.clp set1 " ?id "  mukwa_kiyA_gayA )" crlf)) 
)

(defrule set2
(declare (salience 4800))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 free)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mukwa_kiyA_gayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set2  "  ?id "  " ?id1 "  mukwa_kiyA_gayA  )" crlf))
)

(defrule set3
(declare (salience 4700))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " set.clp set3 " ?id "  wEyAra_ho )" crlf)) 
)

;$$$ Modified by jagriti(12.12.2013)..........nikala_paZanA in place of wEyAra_honA
;The expedition set out for the upper reaches of the Amazon.
;अभियान दल अमेज़न के उच्च विस्तार के लिए निकल पड़े.
(defrule set4
(declare (salience 4600))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikala_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir*" set.clp	set4  "  ?id "  " ?id1 "  nikala_padZa  )" crlf))
)

(defrule set5
(declare (salience 4500))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWApiwa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " set.clp set5 " ?id "  sWApiwa_kara )" crlf)) 
)

(defrule set6
(declare (salience 2400))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWApiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set6  "  ?id "  " ?id1 "  sWApiwa_kara  )" crlf))
)
;@@@ Added by jagriti(26.11.2013)
;Our house is set back from the road.[cald][veena mam trans]
;हमारा घर सडक से दूर स्थित है.
(defrule set7
(declare (salience 4300))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUra_sWiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set7  "  ?id "  " ?id1 "  xUra_sWiwa_ho  )" crlf))
)

(defrule set8
(declare (salience 4200))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 trap)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set8   "  ?id "  raKa )" crlf))
)
;@@@ Added by jagriti(26.11.2013)
;It is believed that the building was set on fire deliberately.[cambridge advance learner][veena mam translation]
;ऐसा कहा जाता है कि इमारत में आग जानबुझकर लगाई गयी थी .

(defrule set9
(declare (salience 4100))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?id1)
(id-root ?id1 fire)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set9   "  ?id "  lagA )" crlf))
)

;@@@ Added by jagriti(26.11.2013)
;If I've made a mistake, then it's up to me to set it right (= correct it) .[veena mam trans]
; अगर मैंने कोई गलती की है तो यह मेरे पर निर्भर है कि उसे सही करूं .
(defrule set10
(declare (salience 4000))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kqxanwa_karma  ?id ?id1)
(id-root ?id1 right)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set10   "  ?id "  sahi_kara )" crlf))
)
;@@@ Added by jagriti(26.11.2013)
;The government has set new limits on spending.[veena mam]
;सरकार ने खर्च करने पर नयी सीमा स्थापित की है .
;Lewis has set a new world record .
;लेविस ने नया वर्ड रिकार्ड स्थापित किया है.
;The court's decision has set a legal precedent .
;न्यायालय के निर्णय ने एक नया उदाहरण स्थापित किया .
;Parents should set a good example to their children.
;माता –पिता को बच्चों के लिए एक अच्छा उदाहरण स्थापित करना चाहिए .

(defrule set11
(declare (salience 3900))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 limit|record|example|precedent)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWApiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set11   "  ?id "  sWApiwa_kara )" crlf))
)
;@@@ Added by jagriti(26.11.2013)
;He set the alarm for 7.00 a.m.[veena mam]
;उसने सुबह सात बजे का अलार्म लगाया .
;Will you set the table (= put plates and utensils on it ready for use) , please?
;क्या आप कृपया मेंज पर खाने के लिए बर्तन लगा देंगे ?
(defrule set12
(declare (salience 3800))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 alarm|tray|table|fire); $$$ 'fire' added in the list by Roja (27-04-14). Ex: He set fire to his own house. Suggested by Chaitanya Sir 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set12   "  ?id "  lagA )" crlf))
)

;@@@ Added by jagriti(26.11.2013)
;During the interval the stage was set for the second act.[veena mam]
;मध्यांतर के समय  दूसरे अंक के नाटक के लिए मंच तैयार किया गया . 

(defrule set13
(declare (salience 3700))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 stage)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set13   "  ?id "   wEyAra_kara )" crlf))
)
;@@@ Added by jagriti(26.11.2013)
;Has a date/time been set for the meeting yet?[veena mam]
;क्या अभी तक मीटिंग के लिए तारीख और समय निर्धारित किया जा चुका है ?
;The price of the house has been set at £425 000.
;घर के लिए ४२५००० डालर तय किए गये है .
(defrule set14
(declare (salience 3600))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-for_saMbanXI  ?id ?) (kriyA-at_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirXAriwa_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set14   "  ?id "   nirXAriwa_kara )" crlf))
)
;@@@ Added by jagriti(26.11.2013)
;A gold tiepin with a diamond set into it.[veena mam]
;सोने के टाई पिन में हीरा जड़ा है
;A brooch set with rubies and pearls. (जड़ी हैं )
(defrule set15
(declare (salience 3200))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-into_saMbanXI  ?id ?) (kriyA-with_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jadZ_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set15   "  ?id "   jadZ_xe )" crlf))
)
;@@@ Added by jagriti(27.11.2013)
;When a doctor sets a broken bone, he or she puts it into a fixed position so that it will heal .[veena mam]
; जब डाक्टर टूटी हुई हड्डी को जोड़ता है ,तब वह उसे निर्धारित ठीक स्थान पर रखता है ताकि वह ठीक हो सके .`
; When a broken bone sets, it heals in a fixed position.
; जब टूटी हुई हड्डी जुड़ जाती है ,तो अपनी जगह पर ठीक हो जाती है .
(defrule set16
(declare (salience 3400))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-object ?id ?id1)(kriyA-subject ?id ?id1))
(id-root ?id1 bone)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set16   "  ?id "   jodZa )" crlf))
)

;@@@ Added by jagriti(27.11.2013)
;He set a vase of flowers on the table.[veena mam]
;उसने मेंज पर एक फूलों का गुलदस्ता रक्खा .
;The campsite is set in the middle of a pine forest.
;कैम्प लगाने की  जगह को पाइन के जंगल के बीच रक्खा गया है .
(defrule set17
(declare (salience 1400))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-in_saMbanXI  ?id ?) (kriyA-on_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set17   "  ?id "   raKa )" crlf))
)
;@@@ Added by jagriti(27.11.2013)
;Her attacker set about her with a knife.[veena mam]
; उसके हमलावर ने चाकू से उस पर हमला किया (वार किया ).
(defrule set18
(declare (salience 3500))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) about)
(kriyA-about_saMbanXI ?id ?id1)
(kriyA-subject ?id ?id2)
(id-root ?id2 attacker)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) hamalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set18  "  ?id "  " =(+ ?id 1) "  hamalA_kara  )" crlf))
)
;@@@ Added by jagriti(27.11.2013)
;I tried to apologize, but I think I set about it the wrong way. [veena mam]
; मैंने माफी मांगने का प्रयास किया ,पर लगता है मैंने गलत तरीके से पेशकश  की .
(defrule set19
(declare (salience 3100))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(kriyA-about_saMbanXI ?id ?id1)
(id-root =(+ ?id 1) about)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  =(+ ?id 1)  peSakaSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set19  "  ?id "  "  =(+ ?id 1)  "  peSakaSa_kara  )" crlf))
)
;@@@ Added by jagriti(27.11.2013)
;This war has set neighbour against neighbour.[veena mam]
; इस लड़ाई ने पड़ोसी को पड़ोसी से लडवा दिया .
(defrule set20
(declare (salience 3000))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id3)
(id-root ?id3 war)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladZvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set20   "  ?id "  ladZvA  )" crlf))
)

;@@@ Added by jagriti(27.11.2013)
;The cost of business travel and entertainment can be set against tax .[veena mam]
; व्यवसायिक यात्रा और मनोरंजन व्यवसाय की कीमत दोनों को मिलाकर करों को कम किया जा सकता है .
(defrule set21
(declare (salience 2900))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-against_saMbanXI  ?id ?id1)
(id-root ?id1 tax)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set21   "  ?id "  kama_kara  )" crlf))
)

;@@@ Added by jagriti(27.11.2013)
;You have to set the advantages of the scheme against the disadvantages.[veena mam]
; तुम्हें स्कीम के नुकसान के सामने उसके फायदे (लाभ ) की तुलना करनी पड़ेगी . 
(defrule set22
(declare (salience 2800))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(viSeRya-against_saMbanXI  ?id2 ?id3)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wulanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set22   "  ?id "  wulanA_kara  )" crlf))
)
;@@@ Added by jagriti(27.11.2013)
;The Court of Appeal set aside his conviction.
;न्यायालय ने उसकी अपील पर अपना निर्णय सुरक्षित रक्खा. 
(defrule set23
(declare (salience 2700))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 aside )
(kriyA-object  ?id ?id2)
(id-word ?id2 conviction)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 surakRiwa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set23  "  ?id "  " ?id1 "  surakRiwa_raKa  )" crlf))
)
;@@@ Added by jagriti(27.11.2013)
;He had some money in an account that he'd set aside for his kids.
;उसके खाते में कुछ पैसे थे जो उसने अपने बच्चों के लिए अलग रक्खें थे . [veena mam]
; I set aside half an hour every evening to hear Erik read.
;एरिक ने क्या पढ़ा यह सुनने के लिए मैंने हर शाम आधा घंटे का समय रक्खा .
(defrule set24
(declare (salience 2600))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 aside )
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 alaga_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set24  "  ?id "  " ?id1 "  alaga_raKa  )" crlf))
)
;@@@ Added by jagriti(27.11.2013)
;The market was full of brightly coloured vegetables set out on stalls.[veena mam]
;बाजार में सारे स्टाल्स को रंगविरंगें रंगों की सब्जियों से सजाया गया है . 
(defrule set25
(declare (salience 4600))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 out)
(kriyA-on_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set25  "  ?id "  " ?id1 "  sajA  )" crlf))
)
;@@@ Added by jagriti(27.11.2013)
;She set herself up as an interior designer.[veena mam]
; उसने अपने को एक आंतर डिज़ाइन करने वाली के रूप में प्रतिष्ठित किया .
(defrule set26
(declare (salience 4400))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-as_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prawiRTiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set26  "  ?id "  " ?id1 "  prawiRTiwa_kara  )" crlf))
)
;@@@ Added by jagriti(27.11.2013)
;I need one or two people to help me set up the equipment.[veena mam]
;उपकरण लगाने के लिए मुझे एक या दो लोंगो की सहायता की जरूरत होगी .
(defrule set27
(declare (salience 5001))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-object  ?id ?id2)
(id-root ?id2 equipment)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set27  "  ?id "  " ?id1 "  lagA  )" crlf))
)
;@@@ Added by jagriti(28.11.2013)
;She plans to set up her own business.[veena mam]
;उसने अपना कारोबार शुरू करने का इरादा किया है .
(defrule set28
(declare (salience 5001))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-kriyArWa_kriyA ?id2 ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SurU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set28  "  ?id "  " ?id1 " SurU_kara )" crlf))
)
;@@@ Added by jagriti(28.11.2013)
;We only had a couple of hours to set up before the exhibition opened.[veena mam]
;नुमाइश खुलने से पहले हमारे पास तैयारी के लिए केवल कुछ घंटे ही बाकी थे .
(defrule set29
(declare (salience 5001))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-samakAlika_kriyA  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wEyArI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set29  "  ?id "  " ?id1 " wEyArI_kara )" crlf))
)

;@@@ Added by jagriti(28.11.2013)
;Winning the lottery has set them up for life .[veena mam]
;  लाटरी की जीत ने उनको जीवन भर की ( के लिए) सुविधाएँ दे दी है .
(defrule set30
(declare (salience 5001))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-vAkya_subject ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 suviXAeM_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set30  "  ?id "  " ?id1 " suviXAeM_xe )" crlf))
)
;@@@ Added by jagriti(18.12.2013)
;Every winter they visit us on set days.
;ve hara sarxiyoM meM hamAre pAsa nirXAriwa xinoM meM Awe hEM.
;वे हर सर्दियों में हमारे पास निर्धारित दिनों में आते हैं.
(defrule set31
(declare (salience 1200))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1  ?str&:(and (neq (numberp ?str) TRUE)(gdbm_lookup_p "time.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirXAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set31  "  ?id "  nirXAriwa )" crlf))
)
;@@@ Added by jagriti(18.12.2013)
;She has very set ideas on bringing up children.
;baccoM ko pAlane ke viRaya meM usake bahuwa xqDZa vicAra hEM.
;बच्चों को पालने के विषय में उसके बहुत दृढ़ विचार हैं.
(defrule set32
(declare (salience 2200))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 idea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set32  "  ?id "  xqDZa )" crlf))
)
;@@@ Added by jagriti(18.12.2013)
;She always has a set expression on her face.
;usake cehare para hameSA eka hI sA BAva rahawA hE.
;उसके चेहरे पर हमेशा एक ही सा भाव रहता है.

(defrule set33
(declare (salience 2100))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 expression)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_hI_waraha_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set33  "  ?id "  eka_hI_waraha_kA )" crlf))
)
;@@@ Added by jagriti(18.12.2013)
;The film has beautiful sets.
;Pilma meM sunxara xqSyabanXa hEM.
;फिल्म में सुन्दर दृश्यबन्ध हैं.
(defrule set34
(declare (salience 2000))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id ?id1)
(id-root ?id1 beautiful)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqSyabanXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set34  "  ?id "  xqSyabanXa )" crlf))
)
;@@@ Added by jagriti(18.12.2013)
;He is solving the problems in the chapter sets.
;vaha aXyAya samuccayoM kI samasyAoM ko sulaJA rahA hE.
;वह अध्याय समुच्चयों की समस्याओं को सुलझा रहा है.
(defrule set35
(declare (salience 1900))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-root ?id1 chapter)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samuccaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set35  "  ?id "  samuccaya )" crlf))
)

;@@@ Added by jagriti(18.12.2013)
;The cement will take some time to set.
;sImeMta ko jamane meM kuCa samaya legA.
;सीमेंट को जमने में कुछ समय लेगा.
(defrule set37
(declare (salience 1700))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 cement)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jamanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set37 "  ?id " jamanA)" crlf))
)
;@@@ Added by jagriti(18.12.2013)
;The sun in northern countries sets much later in summer than in winter.
;uwwarI xeSoM meM sUraja garmiyoM meM sarxiyoM kI apekRA xera se aswa howA hE.
;उत्तरी देशों में सूरज गर्मियों में सर्दियों की अपेक्षा देर से अस्त होता है.
(defrule set38
(declare (salience 1600))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 sun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aswa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set38 "  ?id " aswa_ho_jA)" crlf))
)
;@@@ Added by jagriti(18.12.2013)
;She set her jaw in a determined manner.
;usane apanI TodZI ko xqDZawA se kasa liyA
;उसने अपनी ठोड़ी को दृढ़ता से कस लिया.
(defrule set39
(declare (salience 1500))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 jaw)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set39 "  ?id " kasa_le)" crlf))
)
;@@@ Added by jagriti(18.12.2013)
;Hari set pen to paper to complete the letter.
;hari ne pawra Kawama karane ko kAgajZa para kalama CuAyA.
;हरि ने पत्र खतम करने को कागज़ पर कलम छुआया.
(defrule set40
(declare (salience 1300))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 pen)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CuAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set40 "  ?id " CuAyA)" crlf))
)
;@@@ Added by jagriti(18.12.2013)
;They haven't set a date for their wedding yet.
;unhoMne aBI waka apanI SAxI kA xina niSciwa nahIM kiyA hE.
;उन्होंने अभी तक अपनी शादी का दिन निश्चित नहीं किया है.
(defrule set41
(declare (salience 2300))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 date)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set41 "  ?id " niSciwa_kara)" crlf))
)
;@@@ Added by jagriti(11.12.2013)
;I've already told you that when travelling in the mountains, one must set off at the crack of dawn.[gyanidhi-corpus]
;मैं आपको पहले से ही बता चुका हूँ कि पर्वतों में यात्रा करते समय  हर एक को उषाकाल की दरार से दूर रवाना होना चाहिए. .
(defrule set43
(declare (salience 5000))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ravAnA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set43  "  ?id "  " ?id1 " ravAnA_ho)" crlf))
)

;@@@ Added by jagriti(13.12.2013)
;I set up a goat as bait, but the leopard refused to be tempted.
;मैंने शिकार के लिए एक बकरा भी बांध रखा था किन्‍तु चीते ने उसकी ओर देखा तक नहीं।
(defrule set44
(declare (salience 5500))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 up)
(kriyA-object ?id ?id2)
(id-root ?id2 goat|cow)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAMzXa_raKa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set44 "  ?id " bAMzXa_raKa)" crlf))
)

;@@@ Added by jagriti(3.1.2014)
;Spring was over and summer had set in.
;वसंत  खत्म हो गया और गर्मियाँ आरम्भ हो गयी.
(defrule set45
(declare (salience 5300))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not(kriyA-object ?id ?))
(not(kriyA-karma ?id ?))
(id-root =(+ ?id 1) in)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) AramBa_ho ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set45 "  ?id " AramBa_ho)" crlf))
)
;@@@ Added by jagriti(27.1.2014)
;One lakh  out of this endowment was to be set apart by the University for maintaining scholarships for advanced students in Science to enable them to carry on research abroad.
;स्थायी निधि से एक लाख रूपये विश्वविद्यालय द्वारा विज्ञान में उच्च शिक्षा के छात्रों को विदेशों में शोध कार्य करने के लिए छात्रवृत्तियां देने के लिए अलग रखे जाने थे।
(defrule set46
(declare (salience 5500))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 apart )
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 alaga_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set46  "  ?id "  " ?id1 "  alaga_raKa  )" crlf))
)
;@@@ Added by jagriti(11.2.2014)
;They set forth on a journey to Jaipur.[rajpal]
;वे जयपुर के लिए एक यात्रा पर चल पडे.
(defrule set47
(declare (salience 5500))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 forth )
(kriyA-on_saMbanXI  ?id ?id2)
(id-root ?id2 journey)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cala_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set47  "  ?id "  " ?id1 "  cala_padZa )" crlf))
)
;@@@ Added by jagriti(11.2.2014)
;To set forth a new theory.[rajpal]
;एक नया सिद्धान्त प्रस्तुत करना . 
(defrule set48
(declare (salience 5000))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 forth )
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praswuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set48  "  ?id "  " ?id1 "  prasawuwa_kara  )" crlf))
)
;@@@ Added by jagriti(12.2.2014)
;A bomb set off at very touch.[rajpal]
;बम स्पर्श मात्र से दग गया .
(defrule set049
(declare (salience 5300))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 off)
(kriyA-subject ?id ?id2)
(id-root ?id2 bomb|rifle|gun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xaga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set049  "  ?id "  " ?id1 " xaga_jA)" crlf))
)
;@@@ Added by jagriti(12.2.2014)
;He set off gun.
;उसने बंदूक दाग दिया .  
(defrule set49
(declare (salience 5300))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 off)
(kriyA-object ?id ?id2)
(id-root ?id2 bomb|rifle|gun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xAga_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set49  "  ?id "  " ?id1 " xAga_xe)" crlf))
)

;@@@ Added by jagriti(12.2.2014)
;The robbers set on him.[rajpal]
;डाकुओं ने उसपर आक्रमण किया . 
(defrule set50
(declare (salience 5000))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(kriyA-subject ?id ?id2)
(id-root ?id2 robber|terrorist)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set50   "  ?id "  AkramaNa_kara )" crlf))
)
;@@@ Added by jagriti(12.2.2014)
;He could not set out his ideas clearly.[rajpal]
;वह स्पष्टतः अपने विचार प्रस्तुत नहीं कर सका . 
(defrule set51
(declare (salience 5000))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 out)
(kriyA-object ?id ?id2)
(id-root ?id2 idea)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praswuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir*" set.clp	set51  "  ?id "  " ?id1 "  praswuwa_kara  )" crlf))
)
;@@@ Added by jagriti(12.2.2014)
;The reason of his dismissal are set out in my report.[rajpal]
;उसकी बरखास्तगी के कारण मेरी रिपोर्ट में लिख दिए गये हैं . 
(defrule set52
(declare (salience 4900))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 out)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 liKa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir*" set.clp	set52  "  ?id "  " ?id1 "  liKa_xe  )" crlf))
)
;@@@ Added by jagriti(12.2.2014)
;She set down something in his diary.[rajpal]
;उसने उसकी डायरी में कुछ लिख दिया . 
(defrule set53
(declare (salience 4900))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 down)
(kriyA-object ?id ?id2)
(viSeRya-in_saMbanXI ?id2 ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 liKa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir*" set.clp	set53  "  ?id "  " ?id1 "  liKa_xe  )" crlf))
)
;@@@ Added by jagriti(12.2.2014)
;Set down your luggage and take rest.[rajpal]
;अपना सामान उतारिए और विश्राम कीजिए . 
(defrule set54
(declare (salience 4800))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir*" set.clp	set54  "  ?id "  " ?id1 "  uwAra  )" crlf))
)
;@@@ Added by jagriti(12.2.2014)
;jelly has set.[rajpal]
;जैली जम गया है .
(defrule set55
(declare (salience 5000))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 water|jelly|curd|ice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jama_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set55 "  ?id " jama_jA)" crlf))
)
;@@@ Added by jagriti(12.2.2014)
;They set the prince on the throne.[rajpal]
;उन्होंने राजसिंहासन पर राजकुमार को बैठाया . 
(defrule set56
(declare (salience 5000))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(id-root ?id1 throne|car|bus|bed|train)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set56 "  ?id " bETA)" crlf))
)
;@@@ Added by jagriti(12.2.2014)
;To set the watch.[rajpal]
;घडी ठीक करना . 
(defrule set57
(declare (salience 5000))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 watch)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set57 "  ?id " TIka_kara)" crlf))
)

;------------------------------ Default rules -------------------------------------
;@@@ Added by jagriti(26.11.2013)
; A set of prime numbers.[iit-bombay] 
; मुख्य अङ्कों का समूह. 
(defrule set36
(declare (salience 100))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samUha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set36   "  ?id " samUha )" crlf))
)

;$$$ Modified by Shirisha Manju Suggested by Chaitanya Sir (17-08-13)
;Changed meaning from "jamA" to  "yojiwa_kara" The Gita has been set in the Mahabharata. Note: if it sounds too formal it may be restored.
(defrule set_verb
(declare (salience 100))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yojiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp       set_verb   "  ?id "  jamA )" crlf))
)

(defrule set_adj
(declare (salience 100))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set_adj  "  ?id "  niSciwa )" crlf))
)



;"set","Adj","1.niSciwa"
;This Hotel serves meals at set times.
;--"2.xqDZa"
;She has very set ideas on womens' issues. 
;--"3.kqwrima"
;She always has a set expression on her face.
;--"4.wEyAra"
;The new political party looks set for victory in the general election.
;--"5.nirXAriwa"
;Every winter they visit us on set days.
;
;LEVEL 
;Headword : set
;
;Examples --
;
;"set","N","1.seta" (eka sAWa kAma meM AnevAlI vaswuoM kA samUha jEse 'hAra, aMgUTI, bunxe Ora kadZe' milakara eka gahanoM kA 'seta' hogA.)
;Can you get a cutlery set for me?
;kyA wuma mere liye eka katalarI sEta lAoge. (katalarI seta - kAztA, cammaca Ora CurI)
;--"2.xqSyabanXa"
;The film has beautiful sets.
;Pilma meM sunxara xqSyabanXa hEM.
;फिल्म में सुन्दर दृश्यबन्ध हैं.

;--"3.samuccaya"
;He is solving the problems in the chapter sets.
;vaha aXyAya samuccayoM kI samasyAoM ko sulaJA rahA hE.
;वह अध्याय समुच्चयों की समस्याओं को सुलझा रहा है.

;"set","V","1.raKa xenA"
;She set a tray down on the table.
;usane mejZa para tre raKa xI. 
;--"2.CuAyA"
;Hari set pen to paper to complete the letter.
;hari ne pawra Kawama karane ko kAgajZa para kalama CuAyA.
;--"3.lagAnA"
;Why don't you set the alarm at 6 O' clock?
;wuma CaH baje kA alArma kyoM nahIM lagAwe ho ?
;--"4.jadZanA"
;Her necklace was set with rubies.
;usakA hAra rUbiyoM se jadZA WA.
;--"5.niSciwa karanA"
;They haven't set a date for their wedding yet.
;unhoMne aBI waka apanI SAxI kA xina niSciwa nahIM kiyA hE.
;--"6.kAyama karanA"
;She set a new world record for the marathon.
;usane mErAWana xOdZa meM eka nayA viSva rikOYrda kAyama kiyA.
;--"7.jamanA"
;The cement will take some time to set.
;sImeMta ko jamane meM kuCa samaya legA.
;--"8.kasanA"
;She set her jaw in a determined manner.
;usane apanI TodZI ko xqDZawA se kasa liyA
;उसने अपनी ठोड़ी को दृढ़ता से कस लिया

;--"9.bETAnA"
;The sergeon set her broken bone.
;sarjana ne usakI tUtI haddI ko biTAyA.
;--"10.kampojZa karanA"
;Books were previously set by hand but not any more.
;pahale kiwAboM ko hAWa se kampojZa kiyA jAwA WA, para aba nahIM.
;पहले किताबों को हाथ से कम्पोज़ किया जाता था, पर अब नहीं.

;--"11.aswa ho jAnA"
;The sun in northern countries sets much later in summer than in winter.
;uwwarI xeSoM meM sUraja garmiyoM meM sarxiyoM kI apekRA xera se aswa howA hE.
;
;"set","Adj","1.niSciwa"
;Hotel meals are served at set times.
;hotala meM KAnA niSciwa samaya para xiyA jAwA hE.
;--"2.xqDZa"
;She has very set ideas on bringing up children.
;baccoM ko pAlane ke viRaya meM usake bahuwa xqDZa vicAra hEM.
;--"3.eka_hI_waraha_kA"
;She always has a set expression on her face.
;usake cehare para hameSA eka hI sA BAva rahawA hE.
;--"4.wEyAra"
;The new political party looks set for victory in the general election.
;nayA rAjanEwika xala Ama cunAvoM meM jIwa ke liye wEyAra lagawA hE. 
;--"5.nirXAriwa"
;Every winter they visit us on set days.
;ve hara sarxiyoM meM hamAre pAsa nirXAriwa xinoM meM Awe hEM.
;
;
;Upara xiye uxAharaNoM se 'set' ke kuCa arWa Upara nikala kara Awe hEM.
;'bETAnA','jadZanA','CuAnA','jamAnA','raKanA' Ora 'aswa_honA' Axi arWa paraspara sambanXiwa lagawe hEM.
;
;anwarnihiwa_sUwra ;
;
;			bETAnA=jamAnA
;                          |
;                |---------|------------|
;                |         |            |
;	(nIce_kI_ora_jAnA) xqDZa_banAnA   (bETAne kA sWAna)
;                |         |            |
;                |         |           (sWAna para)
;            aswa_honA   niSciwa_hojAnA |----|------|
;                                    |    |      |
;                                  raKanA  CuAnA  jadZanA
;                                    |
;                                    |
;                           (eka_sAWa_kAma_AnevAlI_cIjZoM_ko_eka_sWAna_para raKanA)
;                                    | 
;                              (EsI_cIjZoM_kA_samUha)
;                                    |
;                                   seta
;
;sUwra : jamAnA^seta         

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_set31
(declare (salience 1200))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (neq (numberp ?str) TRUE)(gdbm_lookup_p "time.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirXAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " set.clp   sub_samA_set31   "   ?id " nirXAriwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_set31
(declare (salience 1200))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (neq (numberp ?str) TRUE)(gdbm_lookup_p "time.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirXAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " set.clp   obj_samA_set31   "   ?id " nirXAriwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_set32
(declare (salience 2200))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 idea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " set.clp   sub_samA_set32   "   ?id " xqDZa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_set32
(declare (salience 2200))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 idea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " set.clp   obj_samA_set32   "   ?id " xqDZa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_set33
(declare (salience 2100))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 expression)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_hI_waraha_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " set.clp   sub_samA_set33   "   ?id " eka_hI_waraha_kA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_set33
(declare (salience 2100))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 expression)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_hI_waraha_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " set.clp   obj_samA_set33   "   ?id " eka_hI_waraha_kA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_set34
(declare (salience 2000))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 beautiful)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqSyabanXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " set.clp   sub_samA_set34   "   ?id " xqSyabanXa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_set34
(declare (salience 2000))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 beautiful)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqSyabanXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " set.clp   obj_samA_set34   "   ?id " xqSyabanXa )" crlf))
)
