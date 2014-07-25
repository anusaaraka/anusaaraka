
(defrule settle0
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id settled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id basA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  settle.clp  	settle0   "  ?id "  basA_huA )" crlf))
)

;"settled","Adj","1.basA huA"
;He is leading a settled family life.
;--"2.SAnwa"
;You'll feel more settled when you've been here a few weeks.
;
(defrule settle1
(declare (salience 4900))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle1   "  ?id "  beMca )" crlf))
)


;"settle","N","1.beMca"
;The settles are mainly used by old people for more comfort && support.
;


;@@@ Added by Pramila (BU) on 28-11-2013
;I'd like to get this matter settled once and for all.     ;cald
;मैं इस मामले को हमेशा के लिए निपटाना चाहता हूँ.
(defrule settle2
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(viSeRya-kqxanwa_viSeRaNa  ?id1 ?id)
(kriyA-object  ?id2 ?id1)
(id-root ?id1 matter|dispute|strike)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 nipatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " settle.clp	settle2  "  ?id "  " ?id2 " nipatA  )" crlf))
)


;@@@ Added by Pramila (BU) on 28-11-2013
;It took months to settle the dispute/strike.               ;cald
;विवाद/हड़ताल से निपटने में महीनों लग गए.
(defrule settle3
(declare (salience 4500))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(kriyA-kAlavAcI  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nipata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle3   "  ?id "  nipata )" crlf))
)

;@@@ Added by Pramila (BU) on 28-11-2013
;My father and I have agreed finally to settle our differences.         ;cald
; मैं और मेरे पिता अपने मतभेदों को समाप्त करने  के लिए अंत में सहमत हो गए .
(defrule settle4
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object  ?id ?id1)
(id-root ?id1 difference)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle4   "  ?id " samApwa_kara)" crlf))
)


;@@@ Added by Pramila (BU) on 28-11-2013
;The dentist told her patient to settle back in the chair.       ;cald
;दंत चिकित्सक ने अपने रोगी को कुर्सी पर आराम से बैठने के लिए कहा.
;He settled himself down with a newspaper, and waited for the train to arrive.     ;cald
;वह एक समाचार-पत्र लेकर आराम से बैठ गया और ट्रेन के आने का इंतजार किया.
(defrule settle5
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 down|back)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle5   "  ?id " bETa_jA)" crlf))
)

;@@@ Added by Pramila (BU) on 28-11-2013
;After they got married, they settled in Brighton.           ;cald
;उनकी शादी होने के बाद, वे ब्राइटन में बस गए.(रहने लगे )
(defrule settle6
(declare (salience 4500))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(or(kriyA-in_saMbanXI  ?id ?)
(and(kriyA-upasarga  ?id ?id2)(id-word ?id2 down)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id basa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle6   "  ?id " basa_jA)" crlf))
)

;$$$ Modified by Pramila (BU) on 28-11-2013
;added 'kriyA-by_saMbanXI' relation
;America was first settled by people who came across from Asia over 25,000 years ago.      ;cald
;अमेरिका उन लोगो के द्वारा बसाया गया  देश था जो एशिया से 25,000 वर्षों पहले आकर वहाँ बस गए थे .  .
(defrule settle7
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-by_saMbanXI  ?id ?)         
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id basA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle7   "  ?id " basA)" crlf))
)

;@@@ Added by Pramila (BU) on 28-11-2013
;The house had been empty for years, and dust had settled on all the surfaces.     ;cald
;घर वर्षों पहले खाली हो गया था, और धूल सभी सतहों पर जम चुकी थी.
;Do you think the snow will settle?                ;cald
;क्या आपको लगता है बर्फ जमेगी ? 
;The contents of this packet may settle.                 ;cald
;इस पैकेट की सामग्री जम सकती है.
(defrule settle8
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject  ?id ?id2) (and(kriyA-subject  ?id ?id1)(viSeRya-of_saMbanXI  ?id1 ?id2)))
(id-root ?id2 snow|dust|packet)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle8   "  ?id " jama)" crlf))
)

;@@@ Added by Pramila (BU) on 28-11-2013
;Please settle your account/bill without further delay.            ;cald
;आगे बिना किसी देरी के अपने खाते / बिल का भुगतान करें.
;It took the insurance company months to settle my claim.            ;cald
;बीमा कंपनी ने मेरे दावे का भुगतान करने में महीनों ले लिए.
(defrule settle9
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object  ?id ?id1)
(id-root ?id1 account|claim|bill)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BugawAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle9   "  ?id " BugawAna_kara)" crlf))
)

;@@@ Added by Pramila (BU) on 28-11-2013
;The weather is expected to settle towards the end of the week.   ;cald
;सप्ताह के अंत तक मौसम में थमने की उम्मीद है.
(defrule settle10
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-towards_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Wama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle10   "  ?id " Wama)" crlf))
)

;@@@ Added by Pramila (BU) on 28-11-2013
;We're very busy this week, but things should settle (down) a bit after the weekend.
;इस सप्ताह हम बहुत व्यस्त हैं, लेकिन सप्ताहांत के बाद चीजें  थोड़ी स्थिर हो जानी चाहिए.
;The pound rose slightly against the dollar today, then settled at $1.53.
;पौंड डॉलर के मुकाबले आज थोड़ा बढ़ गया और 1.53 पर जाकर स्थिर हो गया.
(defrule settle11
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(or(kriyA-aXikaraNavAcI  ?id ?)(kriyA-at_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWira_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle11   "  ?id " sWira_ho_jA)" crlf))
)

;@@@ Added by Pramila (BU) on 28-11-2013
;A peaceful expression settled on her face.                ;cald
;उसके चेहरे पर एक शांतिपूर्ण भाव छा गया.
;After the recent riots, an uneasy calm has settled on the city.          ;cald
;हाल ही के दंगों के बाद , शहर में एक असुरक्षित सन्नाटा सा छा गया.
(defrule settle12
(declare (salience 4900))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-on_saMbanXI  ?id ?)
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle12   "  ?id " CA_jA)" crlf))
)

;@@@ Added by Pramila (BU) on 28-11-2013
;The bird settled on a very small branch.             ;sentence of this file
;vaha cidZiyA eka bahuwa CotI sI dAlI para bETa gayI 
(defrule settle13
(declare (salience 4900))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-on_saMbanXI  ?id ?)
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle13   "  ?id " bETa_jA)" crlf))
)


;@@@ Added by Pramila (BU) on 28-11-2013
;I'll call you back as soon as I've settled the children for the night.   ;cald
;जैसे ही रात में बच्चों को सुलाने के बाद , मैं आपको वापिस फोन करूंगी ..
(defrule settle14
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object  ?id ?id1)
(viSeRya-for_saMbanXI  ?id1 ?id2)
(id-root ?id2 night)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle14   "  ?id " sulA)" crlf))
)


;@@@ Added by Pramila (BU) on 28-11-2013
;Come on children, stop chatting and settle down please!       ;cald
;बच्चों बातें करना बंद करों और कृपया शांत हो जाओ .
(defrule settle16
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-upasarga  ?id ?id2)
(id-word ?id2 down)
(kriyA-vAkyakarma  ?id ?id1)
(id-word ?id1 please)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 SAMwa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " settle.clp	settle16  "  ?id "  " ?id2 " SAMwa_ho_jA  )" crlf))
)

;@@@ Added by Pramila (BU) on 28-11-2013
;They were hoping to sell their car for £2000, but settled for £1500.         ;cald
;वे अपनी कार २००० डालर में बेचने की आशा कर रहें थे ,लेकिन १५०० डालर में ही संतुष्ट हो गए..
;He wants a full refund and he won't settle for anything less.          ;cald
;उसे पूरा धन वापिस चाहिए इससे कम में वह संतुष्ट नहीं होगा .
(defrule settle17
(declare (salience 4900))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMwuRta_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle17   "  ?id "  saMwuRta_ho )" crlf))
)


;@@@ Added by Pramila (BU) on 28-11-2013
;Have you settled on a name for the baby?                     ;cald
;क्या बच्चे के नाम के बारे में आप सहमत हो गए ? .
(defrule settle18
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-on_saMbanXI  ?id ?id1)
(viSeRya-for_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahamawa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle18   "  ?id "  sahamawa_ho_jA )" crlf))
)

;@@@ Added by Pramila (BU) on 28-11-2013
;When my uncle died, he settled £1000 a year on me.              ;cald
;जब मेरे अंकल कि मौत हुई ,उन्होंने १००० डालर हर वर्ष मेरे नाम पर किए  .
(defrule settle19
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-on_saMbanXI  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle19   "  ?id "  nAma_kara )" crlf))
)


;@@@ Added by Pramila (BU) on 28-11-2013
;Would you like to settle up now, sir?              ;cald
;श्रीमान, क्या अब आप पैसे चुका देंगे ?
;You buy the tickets and I'll settle up with you later.        ;cald
;तुम टिकिट खरीदो मैं बाद में तुम्हे पैसे चुका दूंगा .
(defrule settle20
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cukA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " settle.clp	settle20  "  ?id "  " ?id1 " cukA_xe  )" crlf))
)

;@@@ Added by Pramila (BU) on 28-11-2013
;Before a performance, she takes three deep breaths to settle her nerves.        ;cald
;प्रदर्शन से पहले, वह अपने तंत्रिकाओं को शांत करने के लिए तीन गहरी साँसें लेती है.
(defrule settle21
(declare (salience 4400))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object  ?id ?id1)
(id-root ?id1 nerve)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAMwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle21   "  ?id "  SAMwa_kara )" crlf))
)


;$$$ Modified by  Pramila (BU) on 28-11-2013
;Changed meaning from 'basa' to 'waya_kara'
;The details of the contract have not yet been settled.             ;cald
;अनुबंध का विवरण अभी तक तय नहीं किया गया है.
;Our lawyer advised us that it would be better to settle out of court .            ;cald
;हमारे वकील ने हमें सलाह दी कि न्यायालय के बाहर तय करना बेहतर होगा.
(defrule settle22
(declare (salience 4000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waya_kara))            
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle22   "  ?id "  waya_kara )" crlf))
)

;@@@ Added by Pramila (BU) on 08-03-2014
;After dinner we settled in front of the television for the evening.       ;cald
;रात के भोजन  के बाद हम शाम को टीवी के सामने आराम से बैठ गए.
(defrule settle23
(declare (salience 5000))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-in_saMbanXI  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle23   "  ?id " bETa_jA)" crlf))
)


;@@@ Added by jagriti(12.12.2013)
;Devyani, comfortably settled on one blanket, with another wrapped around her, said, I no longer find sheep and goats smelly.[gyanidhi-corpus]
;देवयानी आराम से एक कम्बल बछाकर और दूसरा ओएढ़ कर  बैठ गयी थी और कह रही थी, दादा, अब मुझे भेड़-बकरियों के पास से बदबू नहीं आती।
(defrule settle24
(declare (salience 5100))
(id-root ?id settle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-on_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETa_jA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  settle.clp 	settle24   "  ?id "  bETa_jAnA )" crlf))
)

;"settle","V","1.basanA[basAnA]"
;We are going to settle in Taiwan.
;--"2.samaJOwA_kara_lenA"
;Both of them agreed to settle out of court.
;--"3.bETa_jAnA"
;The bird settled on a very small branch. 
;--"4.nirNaya_karanA"
;Everything is settled, I am joining the company next Wednesday.
;--"5.SAnwa_ho_jAnA"
;We were dead tired && the baby would not settle.
;--"6.cukAnA"
;We'll settle the bill later.
;--"7.XIre_XIre_nIce_bETanA"
;Stir the tea to settle the leaves.
;
;LEVEL 
;Headword : settle
;
;Examples --
;
;"settle","V","1.basanA[basAnA]"
;We are going to settle in Taiwan.
;hama loga wAivAna meM basane jA rahe hEM.
;--"2.samaJOwA kara lenA"
;Both of them agreed to settle out of court.
;xono hI kacaharI jAe binA samaJOwA karane ke liye rAjZI ho gaye hEM
;--"3.bETa jAnA"
;The bird settled on a very small branch.
;vaha cidZiyA eka bahuwa CotI sI dAlI para bETa gayI 
;--"4.TIka_TAka_ho_jAnA"
;Everything is settled, I am joining the company next Wednesday.
;saba TIka TAKa ho gayA hE, mEM agale buXavAra ko vaha kampanI jvAina kara rahI hUz.
;--"5.SAnwa ho jAnA"
;We were dead tired and the baby would not settle.
;hama bahuwa Wake We Ora baccA SAnwa nahIM ho rahA WA.
;--"6.cukAnA"
;We can settle up the bill later.
;hama bila bAxa meM cukAezge.
;--"7.nIce_bETa_jAnA"
;Stir the tea to settle the leaves.
;cAya meM cammaca calAo jisase pawwiyAz nIce bETa jAez.
;
;"settle","N","1.beMca"
;The settles are mainly used by old people for more comfort && support.
;prAyaH vqxXa loga sahAre Ora ArAma ke liye ina beMcoM kA iswamAla karawe hEM.
;
;
;
;'settle' Sabxa Old English 'setel' Sabxa kA bAxa kA rUpa hE. 'setel' Sabxa kA
;arWa hE 'seat' - yAni eka prakAra kA Asana{bETane kA sWAna}. AKirI uxAharaNa meM
;yaha spaRta xiKawA hE. jEsA ki aMgrejZI kI prakqwi hE, isameM koI BI saMjFA
;Sabxa kriyA rUpa meM prayoga ho sakawA hE - (EsA hone para samBAvanA yaha BI
;rahawI hE ki kriyA rUpa meM prayoga hone para usake arWa meM mUla saMjFA Sabxa
;ke arWa se kuCa BinnawA BI A jAe), yahAz BI 'settle' apane saMjFA ke prayoga
;se kriyA rUpa meM prayoga hone lagA Ora isakA kriyA prayoga aXika vyApaka
;ho gayA. isakA arWa viswAra krama kuCa isa prakAra se lagawA hE
;
;anwarnihiwa sUwra ;
;
;                       bEMca----bETanA 
;                      (saMjFA)  (kriyA)
;                                  |
;                                sWira ho jAnA
;                                 |
;           --------------------------------------------
;          |                     |                      |         
;    carcA-vivAxa_kI_asWirawA    caMcalawA{SiSu_kI}         halacala{SArIrika}    
;          |                      |                      |
;         samaJOwA                 SAMwa_honA             bETanA,basanA iwyAxi
;
;
;sUwra : SAMwa_honA^bETanA`
