;Quick, jump! he shouted. 
;weja, kUxa vaha cillAyA.
;Before I reached there he jumped. 
;isase pahale ki mEM vahAz para pahuzcA vaha kUxA.
;His horse fell as it jumped the last hurdle.
;AKirI bAXA pAra karawe samaya usakA GodA gira gayA.
(defrule jump0
(declare (salience 100))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-object  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jump.clp 	jump0   "  ?id "  kUxa )" crlf))
)


;Added by Nandini(03-07-13)
;Pre-tax profits jumped from £51,000 to £1.03 million.
;kara pUrva lABa £51,000 se £1.03 para uCale.
(defrule jump1
(declare (salience 4500))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 from)
(kriyA-from_saMbanXI ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uCala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jump.clp	jump1  "  ?id "  " ?id1 "  uCala  )" crlf))
)

;Added by Nandini(03-07-13)
;His horse fell as it jumped the last hurdle.
;AKirI bAXA pAra karawe samaya usakA GodA gira gayA.
;(defrule jump2
;(declare (salience 4300))
;(id-root ?id jump)
;?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 hurdle)
;(kriyA-object ?id ?id1)
;(kriyA-samakAlika_kriyA  ? ?id)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id pAra_kara))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jump.clp 	;jump2   "  ?id "  pAra_kara )" crlf))
;)

;Added by Nandini(03-07-13)
;The story then jumps from her childhood in New York to her first visit to London.
;kahAnI waba nyUyArka meM usake bacapana se viSayAnwariwa hokara (uCalakara)lanxana msM ;usakI pahalI mulAkAwa waka pahuMcawI hE.
;(defrule jump3
;(declare (salience 4520))
;(id-root ?id jump)
;?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 story)
;(kriyA-subject  ?id ?id1)
;**(kriyA-from_saMbanXI ?id ?id1)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id viSayAnwara_kara))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jump.clp 	;jump3   "  ?id "  viSayAnwara_kara )" crlf))
;)

;Added by Nandini(03-07-13)(informal)
;The bar is jumping on Fridays and Saturdays.
;SarAbaGara SukravAra Ora SanivAra ko BarA_howA hE.
;(defrule jump4
;(declare (salience 4250))
;(id-root ?id jump)
;?mng <-(meaning_to_be_decided ?id)
;(kriyA-subject ?id ?id1)
;(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "place.gdbm" ?str)))
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id cahala_pahala_ho))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jump.clp 	;jump4   "  ?id "  cahala_pahala_ho )" crlf))
;)

;Added by Nandini(03-07-13) (informal)
;The mistake in the figures jumped out at me.
;afkoM kI galawI uBarakara mere sAmane AI.
;(defrule jump5
;(declare (salience 4900))
;(id-root ?id jump)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 out)
;(kriyA-upasarga ?id ?id1)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uBarakara_sAmane_A))
;(if ?*debug_flag* then
;(printout wsd_fp ;"(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ; jump.clp 	jump5   "  ?id "  " ?id1 " uBarakara_sAmane_A )" crlf))
;)

;I thought he'd jump at the offer,but he rejected it.
;muJe lagA WA ki vaha isa praswAva ko wuranwa_mAna_legA lekina usane manA kara xiyA.
;kriyA-upasarga = svIkAra_kara_le
;kriyA-at_saMbanXI  = wuranwa_mAna_le
; jump at somebody's throat. tUta pada  --- MWE/template
(defrule jump6
(declare (salience 4800))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(or (kriyA-at_saMbanXI ?id ?)(kriyA-upasarga ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wuranwa_mAna_lenA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jump.clp	jump6  "  ?id "  " ?id1 "  wuranwa_mAna_lenA )" crlf))
)

;Added by Nandini(03-07-13)(informal)
;The thieves jumped him in a dark alleyway.
;eka anXerI galI meM cora usa para Japate.
;The thieves jumped on Ramu in his house.
;ramu ke Gara meM cora usa para Japate.
;(defrule jump7
;(declare (salience 4200))
;(id-root ?id jump)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
;(or (kriyA-on_saMbanXI ?id ?id1)(kriyA-object ?id ?id1))
;(id-cat_coarse ?id1 pronoun|PropN)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id Japata))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jump.clp 	;jump7   "  ?id "  Japata )" crlf))
;)

;Carl won the gold medal in the long jump event in the Olympics.
;carl ne olampika meM lambI kUxa prawiyogiwA meM svarNa paxaka jIwA.
;"jump","N","1.kUxa/CalAzga"
;(defrule jump8
;(declare (salience 4300))
;(id-root ?id jump)
;?mng <-(meaning_to_be_decided ?id)
;(id-root =(- ?id 1) long)
;(id-cat_coarse ?id noun)
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) lambI_kUxa))
;(if ?*debug_flag* then
;(printout wsd_fp ;"(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ;jump.clp	jump8  "  ?id "  "(- ?id 1) "  lambI_kUxa)" crlf)) 
;)

;Added by Nandini(03-07-13)
;An untrained dog will jump about and wreck the place.
;apraSikRiwa kuwwA AsapAsa kUxegA Ora sWAna KarAba karegA.
(defrule jump9
(declare (salience 5000))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) about)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) iXara_uXara_kUxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jump.clp    jump9  "  ?id "  " (+ ?id 1) "  iXara_uXara_kUxa  )" crlf))
)

;Added by Nandini(03-07-13) (idiom)
;Before she could reply Peter jumped in with an objection.
;usake  javAba_xens se  pahale peter ne bIca_meM_ApawwI jawAI.
;Peter jumped in with an objection when she raised her voice.
;jaba usane AvAja uTAI peter ne bIca_meM_ApawwI jawAI.
;(defrule jump10
;(declare (salience 5100))
;(id-root ?id jump)
;?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) in)
;(id-word =(+ ?id 2) with)
;(id-word =(+ ?id 3) an)
;(id-word =(+ ?id 4) objection)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) =(+ ?id 2) =(+ ?id 3) =(+ ;?id 4) bIca_meM_ApawwI_jawAI))
;(if ?*debug_flag* then
;(printout wsd_fp ;"(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ;jump.clp    jump10  "  ?id "  " (+ ?id 1)" " (+ ?id 2)" "(+ ?id 3)" "(+ ?id 4)" bIca_meM_ApawwI_jawAI ;)" crlf))
;)

;Added by Nandini(03-07-13)
;The story then jumps from her childhood in New York to her first visit to London. 
;kahAnI waba usakI praWama mulAkAwa ko nyUyArka meM usakA bacapana lanxana ko CodawI hE.
(defrule jump11
(declare (salience 5200))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 story)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Coda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jump.clp 	jump11   "  ?id "  Coda )" crlf))
)

;You seem to have jumped several steps in the argument.
;EsA lagawA hai ki vivAxa meM Apa kaI kaxama Coda cuke hEM.
(defrule jump12
(declare (salience 5250))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 argument|discussion|points)
(kriyA-in_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Coda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jump.clp 	jump12   "  ?id "  Coda )" crlf))
)


;Added by Nandini(03-07-13)
;The loud bang made me jump.
;bade XamAke ne muJe cOMkA xiyA.
(defrule jump13
(declare (salience 5300))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 bang)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jump.clp 	jump13   "  ?id "  cOMka )" crlf))
)

;She jumped at least seven red signals.
;(defrule jump14
;(declare (salience 200))
;(id-root ?id jump);
;?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 signal)
;(kriyA-object  ?id ?id1)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id  woda))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jump.clp 	;jump14   "  ?id "  woda )" crlf))
;)

;The ipo jumped off on the first day.
;pahale xina ipo kI weja SuravAwa huI.
(defrule jump15
(declare (salience 300))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(and(kriyA-upasarga ?id ?id1)(kriyA-on_saMbanXI  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 weja_SuravAwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  jump.clp 	jump15   "  ?id "  " ?id1 " weja_SuravAwa_ho )" crlf))
)

;I jumped in and had a refreshing swim. 
;(defrule jump16
;(declare (salience 400))
;(id-root ?id jump)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 in)
;(kriyA-upasarga ?id ?id1)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kUxa_pada))
;(if ?*debug_flag* then
;(printout wsd_fp ;"(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ;jump.clp	jump16  "  ?id "  " ?id1 "  kUxa_pada  )" crlf))
;)

;Everyone jumped on me when I raised the issue.
;jaba mEM ne viSaya ko sAmane raKA saba muJa para tUta pade.
(defrule jump17
(declare (salience 4250))
(id-root ?id jump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(or(kriyA-upasarga ?id ?id1)(kriyA-on_saMbanXI  ?id ?))
(kriyA-samakAlika_kriyA  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tUta_pada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jump.clp	jump17  "  ?id "  " ?id1 "  tUta_pada  )" crlf))
)





;LEVEL 

;I jumped for the ball and fell on my arm. 
;mEM golA ke lie kUxA Ora merI bAhu para girA.

;The bar is jumping tonight. 
;SarAbaGara Aja_kI rAwa BarA_ho rahA hE.

;The vegetable market is jumping on Monday. 
;vanaspawi bAjAra somavAra ko BarA_ho rahA hE.

;This house is jumping with joy. 
;yaha Gara Ananxa ke sAWa BarA_ho rahA hE.

;The dog is jumping on the sofa. 
;kuwwA soPe para kUxa rahA hE.

;We performed live and even though I was dancing and jumping around like crazy, it was still one ;of the best experiences of my life. 
;yaxyapi mEM ke iXara uXara pAgala kI waraha nqwya karanA Ora kUxawI huI WA, hamane ;sajIvawA kArya kiyA Ora vaha mere jIvana ke sarvowwama anuBavoM meM se aBI BI eka WA.

;As a child I would always loved jumping around and climbing trees, so I started gymnastics when ;I was five and loved it. 
;mEM pAzca jaba WA wo bacce ke jEsA mEM hara ora kUxanA Ora pedoM para caDanA hameSA ;pasanxa_kara, isalie mEMne kasaraweM Suru kIM Ora isako pasanxa kiyA.

;I increased my best jump by about five inches. 
;mEMne lagaBaga pAzca iFcoM ke xvArA merI sarvowwama kUxa vqxXi kI.

;I personally was somewhat apprehensive of my first jump. 
;mEM svayaM merI praWama kUxa kA kuCa ASafkiwa WA.



;Headword : jump
;--kUxanA
;He jumped from the third floor.
;vaha wIsare mAle se kUxA.
;
;I couldn't follow his talk because he kept  jumping from one topic to another.
;mEM usakI bAwa samaJa nahIM pAyI kyoki vaha eka viRaya se xUsare viRaya para AwA rahawA hE. <--kUxawA rahA 
;
;--Upara_baDanA
;The prices of shares jumped this weekend.
;Seyaro ke xAma wejI se baDZe. <--wejZI se Upara gaye<--Upara kI ora kUxe
;
;--cOMkanA
;The loud bang made me jump.
;jora ke XamAke ne muJe cOMkA xiyA.<--cOMkakara kUxanA
;
;yahAz para alaga saMrxaBa hone ke bAvajUxa yahAz para sUwra 'kUxanA`' hogA.
;
;sUwra : kUxanA`
;
;
;
;discussion
;jump out of one's skin == 
; when I saw a ghost at night I jumped out of my skin. == Baya-vihvala |
;I jumped in and had a refreshing swim. 
;The IPO JUMPED OFF on the first day.
;Everyone JUMPED ON me when I raised the issue.
