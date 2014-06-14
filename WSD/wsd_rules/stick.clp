
;@@@ Added by jagriti(28.12.2013)
;My brother is a good player of stick games.
;मेरा भाई छड़ी खेल का एक अच्छा खिलाड़ी है.
;Ram has got a very good speed at the drum stick.
;राम ने ड्रम छड़ी पर एक बहुत अच्छी गति प्राप्त की है.
(defrule stick0
(declare (salience 5000))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id)(viSeRya-viSeRaNa  ?id ?id1))
(id-root ?id1 game|drum)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CadZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stick.clp 	stick0   "  ?id "  CadZI )" crlf))
)

;@@@ Added by jagriti(28.12.2013)
;My servant kept away all the sticks after are furniture work was over.
;मेरे नौकर ने फर्नीचर का काम खत्म होने के बाद सभी लकड़ियों को दूर रखा.
(defrule stick1
(declare (salience 4900))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 furniture|fire)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakadZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stick.clp 	stick1   "  ?id "  lakadZI )" crlf))
)

;@@@ Added by jagriti(28.12.2013)
;Ram is a funny old stick.
;राम एक मजेदार असाधारण आदमी है.
(defrule stick2
(declare (salience 4800))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asAXAraNa_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stick.clp 	stick2   "  ?id "  asAXAraNa_vyakwi)" crlf))
)

;@@@ Added by jagriti(28.12.2013)
;Stick the iron nail into the wall.
;दीवार में लोहे की कील घुसेड़ दो.
(defrule stick3
(declare (salience 4300))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-into_saMbanXI ?id ?)(kriyA-in_saMbanXI ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GusedZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stick.clp 	stick3   "  ?id "  GusedZa_xe )" crlf))
)

;@@@ Added by jagriti(28.12.2013)
;I can't stick on to the TV for more than two hours.
;I don't know how you stuck that man for so long .
;मैं नहीं जानता कि आपने इतने लंबे समय तक उस आदमी को कैसे बर्दाश्त किया.
(defrule stick4
(declare (salience 4600))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(viSeRya-for_saMbanXI  ? ?id1)(kriyA-for_saMbanXI ?id ?id1))
(id-root ?id1 long|hour|month|year|week|day)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baraxASwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stick.clp 	stick4   "  ?id "  baraxASwa_kara )" crlf))
)

;@@@ Added by jagriti(28.12.2013)
(defrule stick5
(declare (salience 3200))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id teka_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stick.clp 	stick5   "  ?id "  teka_lagA )" crlf))
)

;@@@ Added by jagriti(30.1.2014)
;To stick a stamp on the letter.[rajpal]
;पत्र पर टिकट चिपकाना . 
(defrule stick6
(declare (salience 4400))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cipakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stick.clp 	stick6   "  ?id "  cipakA )" crlf))
)

;@@@ Added by jagriti(30.1.2014)
;The car stuck in the mud and could not move again.[rajpal]
;गाडी कीचड में अटक गई और फिर से नहीं चल सकी . 
(defrule stick7
(declare (salience 4700))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI ?id ?id1)
(viSeRya-det_viSeRaNa ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ataka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stick.clp 	stick7   "  ?id "  ataka_jA )" crlf))
)

;@@@ Added by jagriti(30.1.2014)
;He still stick around here.[rajpal]
;वह अभी भी यहाँ आस पास रहता है . 
(defrule stick8
(declare (salience 4200))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 around)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Asa_pAsa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stick.clp stick8  "  ?id "  " ?id1 "  Asa_pAsa_raha  )" crlf))
)

;@@@ Added by jagriti(30.1.2014)
;He is sticking at the service of his master.[rajpal]
;वह अपने मालिक की सेवा मे लगा रह रहा है .
(defrule stick9
(declare (salience 4100))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI ?id ?id1)
(id-root =(+ ?id 1) at)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) me_lagA_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stick.clp stick9  "  ?id "  " =(+ ?id 1) "  me_lagA_raha  )" crlf))
)

;@@@ Added by jagriti(30.1.2014)
;Stick down an envelope with glue.[rajpal]
;गोंद से एक एनवलप चिपकाइए . 
(defrule stick10
(declare (salience 4000))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cipakA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stick.clp stick10  "  ?id "  " ?id1 "  cipakA  )" crlf))
)

;@@@ Added by jagriti(31.1.2014)
;Those friends always stick together.[rajpal]
;वे मित्र हमेशा एक् दुसरे के प्रति वफादार रहते हैं . 
(defrule stick11
(declare (salience 3900))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa ?id ?id1)
(id-root ?id1 together)
(kriyA-subject ?id ?id2)
(id-root ?id2  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ek_xusare_ke_prawi_vaPAxAra_raha ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stick.clp stick11  "  ?id "  " ?id1 "  ek_xusare_ke_prawi_vaPAxAra_raha )" crlf))
)

;@@@ Added by jagriti(31.1.2014)
;The papers are stuck together.[rajpal]
;कागज आपस मे जुड गये हैं . 
(defrule stick12
(declare (salience 3800))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa ?id ?id1)
(id-root ?id1 together)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Apasa_me_judZa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stick.clp stick12  "  ?id "  " ?id1 "  Apasa_me_judZa  )" crlf))
)

;@@@ Added by jagriti(31.1.2014)
;The robbers stuck up the whole village.[rajpal]
;डाकुओं ने पूरा गाँव आतंक फैलाकर लूट लिया . 
(defrule stick13
(declare (salience 3700))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 up)
(kriyA-subject ?id ?id2)
(id-root ?id2 robber)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AwaMka_PElAkara_lUta_le ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stick.clp stick13  "  ?id "  " ?id1 "  AwaMka_PElAkara_lUta_le )" crlf))
)

;;@@@ Added by jagriti(31.1.2014)
;;To stick up for yourself against an attack. [rajpal]
;;एक हमले के विरुद्ध  अपना बचाव करना . 
(defrule stick14
(declare (salience 4500))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 up)
(kriyA-for_saMbanXI ?id ?id2)
(id-root ?id2 yourself|myself|herself|himself|themself)
(id-root =(+ ?id 2) for)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 =(+ ?id 2) bacAva_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stick.clp stick14  "  ?id "  " ?id1 " "(+ ?id 2)" bacAva_kara )" crlf))
)

;@@@ Added by jagriti(31.1.2014)
;He stuck up to his opponents.[rajpal]
;उसने अपने विरोधियों का डटकर सामना किया . 
(defrule stick15
(declare (salience 3500))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 up)
(kriyA-to_saMbanXI ?id ?id2)
(id-root =(+ ?id 2) to)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 =(+ ?id 2) kA_datakara_sAmanA_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stick.clp stick15  "  ?id "  " ?id1 " "(+ ?id 2)"  kA_datakara_sAmanA_kara )" crlf))
)

;@@@ Added by jagriti(31.1.2014)
;We stuck up the posters.
;हमने विज्ञापन लगाए . 
(defrule stick16
(declare (salience 3400))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lagA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stick.clp stick16  "  ?id "  " ?id1 " lagA )" crlf))
)

;@@@ Added by jagriti(31.1.2014)
;The peon stuck with the officer.[rajpal]
;चपरासी अधिकारी के प्रति वफादार रहा . 
(defrule stick17
(declare (salience 3300))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI ?id ?id1)
(id-root =(+ ?id 1) with)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) ke_prawi_vaPAxAra_raha ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stick.clp stick17  "  ?id "   "(+ ?id 1)"  ke_prawi_vaPAxAra_raha )" crlf))
)

;@@@ Added by jagriti(31.1.2014)
;His teeth are sticking out.[rajpal]
;उसके दाँत बहर निकल रहे हैं . 
(defrule stick18
(declare (salience 3100))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 out)
(not(kriyA-object ?id ?))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikala ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stick.clp stick18  "  ?id "  " ?id1 " bAhara_nikala)" crlf))
)

;@@@ Added by jagriti(31.1.2014)
;The union leaders stuck out for their demand.[rajpal] 
;सङ्गठन नेता उनकी माँग पर डटे रहे . 
(defrule stick19
(declare (salience 3600))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 out)
(kriyA-for_saMbanXI ?id ?id2)
(id-root =(+ ?id 2) for)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 =(+ ?id 2) para_date_raha ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stick.clp stick19  "  ?id "  " ?id1 " "(+ ?id 2)" para_date_raha)" crlf))
)

;"stick","N","1.lATI"
;Old people generally use stick to walk properly.
;--"2.CadZI"
;My brother is a good player of stick games.
;मेरा भाई छड़ी खेल का एक अच्छा खिलाड़ी है.
;--"3.drama_CadZI"
;Ram has got a very good speed at the drum stick.
;--"4.lakadZI"
;My servant kept away all the sticks after are furniture work was over.
;--"5.pulIsa_kA_dZaMdZA"
;The thieves are scared of the police stick.
;--"6.asAXAraNa_vyakwi"
;Ram is a funny old stick.

;..........Default rule...........

(defrule stick20
(declare (salience 0))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lATI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stick.clp 	stick20   "  ?id "  lATI )" crlf))
)

(defrule stick21
(declare (salience 0))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cipaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stick.clp 	stick21   "  ?id "  cipaka )" crlf))
)

;"stick","V","1.cipakanA"
;I tried to STICK All the strickers on the cupboard.
;--"2.GusedZanA"
;Stick the iron nail into the wall.
;--"3.baraxASwa_karanA"
;I can't stick on to the TV for more than two hours.
;--"4.saWApiwa_karanA"
;I want to stick the name of my company in the market scenario.
;
;LEVEL 
;
;
;"stick","N","1.lATI"<--CadZI
;Old people generally use stick to walk properly.
;
;--"2.CadZI" <--CadZI
;My brother is a good player of stick games.
;Ram has got a very good speed at the drum stick.
;The thieves are scared of the police stick.
;My servant kept away all the sticks after are furniture work was over.
;
;Ram is a funny old stick.
;
;"stick","V","1.cipakanA"
;I tried to stick all the stickers on the cupboard.
;
;--"2.GusedZanA"<--xIvAra ke anxara jAkara cipakanA <--cipakanA
;Stick the iron nail into the wall.
;
;--"3.baraxASwa karanA" <--yAni tI.vI.se cipakanA
;I can't stick on to the TV for more than two hours.
;
;--"4.sWApiwa karanA" <--cipakAnA<--cipakanA
;I want to stick the name of my company in the market scenario.
;
;
;nota:--uparyukwa "stick" Sabxa ke saBI kriyA Ora saMjFA ke vAkyoM kA avalokana  
;      karane para isa niRkarRa para pahuzca sakawe hEM ki saBI vAkyoM kA arWa xo SabxoM
;      'CadZI Ora 'cipakanA' se nikAla sakawe hEM.va isake liye sUwra nimna prakAra 
;      liKa sakawe hEM.
;                 
;sUwra : CadZI/GusAnA[<cipakanA]
;  
;
