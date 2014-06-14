
;@@@ Added by Garima Singh(M.Tech-C.S) 4-dec-2013
;He wants a job in which he can apply his foreign languages.[cambridge]
;वह एक ऐसा काम चाहता है जिसमें वह उसकी विदेशी भाषाएँ उपयोग कर सके. 
(defrule apply2
(declare (salience 5000))
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa  ?obj ?id1)
(kriyA-object  ?id ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayoga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  apply.clp  	apply2   "  ?id "  upayoga_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 4-dec-2013
;If you apply pressure to a cut it's meant to stop the bleeding.[cambridge]
;अगर तुम घाव पर दबाब डालोगे तो यह खून रोकने का काम करेगा 
(defrule apply3
(declare (salience 5500))
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-to_saMbanXI  ?id ?id2)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-word ?id1 pressure)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAlo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  apply.clp  	apply3   "  ?id "  dAlo )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 4-dec-2013
;You can solve any problem if you apply yourself.[cambridge]
;तुम कोई भी समस्या हल कर सकते हो अगर तुम पूरी मेहनत करोगे
(defrule apply4
(declare (salience 5000))
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-word ?obj yourself)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrI_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  apply.clp  	apply4   "  ?id "  pUrI_mehanawa_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 4-dec-2013
;Tim has applied to join the police.[cambridge]
;टिम ने पुलिस में भर्ती के लिये आवेदन किया है
;We've applied to a charitable organization for a grant for the project.[cambridge]
;हमने परियोजना के लिये आर्थिक मदद के लिये एक समाजसेवी संस्था से आवेदन किया है . 
;Note:That bit of the form is for UK citizens - it doesn't apply to you. [this sentence is a contradictory example for above rule, so I have added a new rule 'apply5']
(defrule apply5
(declare (salience 5000))
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kriyArWa_kriyA  ?id ?id1)(kriyA-to_saMbanXI  ?id ?id1))
(kriyA-subject ?id ?sub)
(id-cat_coarse ?sub PropN|pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Avexana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  apply.clp  	apply5   "  ?id "  Avexana_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 5-dec-2013
;That bit of the form is for UK citizens - it doesn't apply to you. 
;फार्म का यह भाग यू.के. के नागरिको के लिये है , यह आप पर लागू नहीं होता है
(defrule apply6
(declare (salience 5000))
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id1 PropN|pronoun)
;(id-word ?id1 you|him|her|us)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAgU_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  apply.clp  	apply6   "  ?id "  lAgU_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 9-jan-2014
;Special conditions apply if you are under 18.[oald]
;खास शर्ते लागू होती हैं यदी आप १८ वर्ष से कम आयु के है
(defrule apply7
(declare (salience 5000))
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject  ?id ?sub)(kriyA-vAkya_subject  ?id ?sub))
(id-root ?sub it|rule|law|condition|say)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAgU_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  apply.clp  	apply7   "  ?id "  lAgU_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 5-dec-2013
;The paint should be applied thinly and evenly.[cambridge]
;रंग को पतला और एकसा लगाना चाहिये
;We applied our minds to finding a solution to our problem.[cambridge]
;हमने अपनी समस्या के हल को ढूढंने के लिये दिमाग लगाया
;Then the brakes are applied and the car stops at t 20 s and x 296 m.[ncert]
;इस समय इसमें ब्रेक लगाया जाता है जिसके परिणामस्वरूप वह t = 20 s पर और x = 296 m पर रुक जाती है 
(defrule apply8
(declare (salience 5600))
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 cream|paint|glue|mind|brain|brake);added brake in the list-by Garima Singh(18-march-2014)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  apply.clp  	apply8   "  ?id "  lagA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)09-jan-2014
;To apply for a position in a company.[cambridge]
;कम्पनी में पद के लिये आवेदन करना
(defrule apply9
(declare (salience 5000))
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Avexana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  apply.clp  	apply9   "  ?id "  Avexana_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)09-jan-2014
;The new technology was applied to farming.[oald]
;नयी तकनीक खेती में इस्तेमाल की गयी है
(defrule apply10
(declare (salience 4500))
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(kriyA-subject  ?id ?sub)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iswemAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  apply.clp  	apply10   "  ?id "  iswemAla_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)09-jan-2014
;To apply to company.[oald]
;कम्पनी में आवेदन करना
(defrule apply11
(declare (salience 5000))
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(to-infinitive  ?id1 ?id)
(kriyA-to_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Avexana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  apply.clp  	apply11   "  ?id "  Avexana_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)09-jan-2014
;By the time I saw the job advertised it was already too late to apply. [oald]
;जिस समय मैनें नौकरी का विज्ञापन  देखा तब तक आवेदन करने के लिये देर हो चुकी थी
(defrule apply12
(declare (salience 5000))
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Avexana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  apply.clp  	apply12   "  ?id "  Avexana_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 9-jan-2014
;The paint should be applied thinly and evenly.
;रंग को पतला और एकसार लगाना चाहिये
;Apply the cream sparingly to your face and neck.[oald]
;Apply the suntan cream liberally to exposed areas every three hours and after swimming.[cambridge]
;The court heard how the driver had failed to apply his brakes in time.[cambridge]
;दरबार ने सुना कि कैसे चालक समय में उसके ब्रेक लगाने में असफल हुआ . 
(defrule apply13
(declare (salience 5600))
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject  ?kri ?id1)(kriyA-object  ?kri ?id1))
(id-word ?id1 force|cream|paint|glue|brakes)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  apply.clp  	apply13   "  ?id "  lagA )" crlf))
)

;************************DEFAULT RULES**************************************
(defrule apply0
(declare (salience 0));salience reduced by Garima Singh(M.Tech-C.S) 4-dec-2013
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id applied )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vyAvahArika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  apply.clp  	apply0   "  ?id "  vyAvahArika )" crlf))
)

;"applied","Adj","1.vyAvahArika"
;In every text book applied grammar is given at the end of the lessons
;for practice .
;
;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 09-jan-2014

(defrule apply1
(declare (salience 0));salience reduced by Garima Singh(M.Tech-C.S) 4-dec-2013
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Avexana_kara)); meaning changed from 'lagU_kara' to 'Avexana_kara'
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  apply.clp 	apply1   "  ?id "  Avexana_kara )" crlf))
)

;"apply","VI","1.lAgU_karanA"
;"apply","V","1.lAgU_kara[ho]"
;Traffic rules must be applied strictly .
;--"2.lagAnA"
;Apply 'BARNOL' on the burns .
;--"3.prayoga_meM_lAnA"
;Apply the breaks wherever necessary .
;Unsocial elements apply political pressure && go unpunished .
;--"4.Avexana_pawra_xenA"
;Apply to the chairman for the post of cashier .
;
