
(defrule light0
(declare (salience 5000))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id lights )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xiyA))
(assert (id-wsd_number ?id p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  light.clp  	light0   "  ?id "  xiyA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number  " ?*wsd_dir* "  light.clp      light0   "  ?id " p )"  crlf))
)

(defrule light1
(declare (salience 4900))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_mila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " light.clp	light1  "  ?id "  " ?id1 "  acAnaka_mila_jA  )" crlf))

)

;She lit upon a golden ring hidden under the carpet.
;use galIce ke nIce acAnaka eka sunaharI azgUTI mila gaI

;$$$ Modified by Shirisha Manju 29-4-14 --- Suggested by Chaitanya Sir
;Modofied meaning 'KuSI_se_Kila_jA'  as  'KuSI_se_camaka_uTa'
;Her face lights up when she sees me.
;jaba BI vaha muJe xeKawI hE,usakA ceharA KuSI se  Kila jAwA hE
(defrule light2
(declare (salience 4800))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-subject ?id ?sub) ; added by Shirisha Manju 29-4-14
(id-root ?sub face|eye) ; added by Shirisha Manju 29-4-14
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KuSI_se_camaka_uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " light.clp	light2  "  ?id "  " ?id1 "  KuSI_se_camaka_uTa  )" crlf))
)

;@@@ Added by Shirisha Manju 30-4-14  --- Suggested by Chaitanya Sir
;He sat back and lit up a cigarette.  -- OALD
(defrule light_up
(declare (salience 4810))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-object  ?id ?obj)
(id-root ?obj cigarette|coal|bonfire|fire|wood)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " light.clp        light_up  "  ?id "  " ?id1 "  jalA  )" crlf))
)

;@@@ Added by Shirisha Manju 30-4-14 --- Suggested by Chaitanya Sir
;The coal in the BBQ grill finally lit up.    [ The Free Dictionary]
;On the eve of Holi, a bonfire is lit up.
(defrule light_up1
(declare (salience 4810))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-subject  ?id ?sub)
(id-root ?sub coal|bonfire|fire|wood|cigarette)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " light.clp        light_up1  "  ?id "  " ?id1 "  jala  )" crlf))
)

;@@@ Added by Shirisha Manju 01-5-14 --- Suggested by Chaitanya Sir
;They all lit up as soon as he left the room.     OALD
(defrule light_up2
(declare (salience 4800))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-subject  ?id ?sub)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sigareta_jalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " light.clp        light_up2  "  ?id "  " ?id1 "  sigareta_jalA )" crlf))
)


(defrule light3
(declare (salience 4700))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASiwa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " light.clp light3 " ?id "  prakASiwa_kara )" crlf)) 
)

; The stars light up the night sky	100
(defrule light4
(declare (salience 4600))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prakASiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " light.clp	light4  "  ?id "  " ?id1 "  prakASiwa_kara  )" crlf))
)

; The stars light up the night sky	100

(defrule light5
(declare (salience 4500))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 switch)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  light.clp 	light5   "  ?id "  prakASa )" crlf))
)

;@@@ Added by Nandini (2-11-13)
;Basically, a telescope makes use of curved[ reflecting] surfaces and/or lenses to bend the[ light] rays from a distant source in such a way that its clear and magnified image is formed closer to the observer. [send by suchita shukla]
;बुनियादी तौर पर दूरबीन में प्रतिबिंब बनाने वाले गोल तलों या लेंसों का इस्तेमाल किया जाता है जिससे दूर से आने वाली प्रकाश की किरणें इस प्रकार मुड़ जाती हैं कि देखने वाले के सामने वस्तुओं का स्पष्ट और बड़ा प्रतिबिंब बन जाता है।
(defrule light5-a
(declare (salience 4500))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ray|year)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  light.clp 	light5-a   "  ?id "  prakASa )" crlf))
)

;$$$ Modified by Nandini (17-12-13) replaced id-cat with id-cat_coarse
;And two pairs of light, strong and comfortable shoes for walking. 
;Ora calane ke liye halake, majabUwa Ora ArAmaxAyaka jUwoM ke xo jode.
(defrule light7
(declare (salience 4350))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id halakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  light.clp 	light7   "  ?id "  halakA )" crlf))
)

;"light","Adj","1.halakA"
;The bat is very light. She is a light sleeper.
;--"2.balAGAwaSUnya"
;He made a light touch with his fingure.
;--"3.WakAvata_rahiwa"
;Have some light exercise every morning.
;--"4.sarala"
;Most people enjoy listening to light music. The culprit was let off with a light sentence.
;--"5.PuhAra"
;Light rain.
;--"6.kama"
;Light trading. Light breakfast.
;--"7.BAra_rahiwa"
;I feel so light hearted now.
;
(defrule light8
(declare (salience 4200))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  light.clp 	light8   "  ?id "  prakASa )" crlf))
)

;"light","N","1.prakASa"
;From a distance one could see the light in the hut.
;--"2.prakASa-srowa"
;Switch on the light.
;--"3.samaJa"
;He struggled for a while with the puzzle before the light dawned.
;
(defrule light9
(declare (salience 4100))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  light.clp 	light9   "  ?id "  prakASiwa_kara )" crlf))
)

;----------------- Removed Rules ------------------
;light6
	;if category is adjective and +1 category is not noun then  prakASa


;"light","V","1.prakASa_kara"
;--"2.jalAnA"
;Light the stove.
;--"3.prakASiwa_honA"
;This road is well-lighted.
;--"4.camaka_uTanA"
;His face lighted up on listening the news of his success.
;
;LEVEL 
;
;
;Headword : light
;
;aMgrejZI Sabxa 'light' kA sUwra banAne kA eka prayAsa
;'light' Sabxa kA viSleRaNa xeKiye :-
;
;Examples -
;
;"light","A","1.halakA-"
;This suitcase is light && good.
;yaha baksA halakA Ora acCA hE.
;
;"light","N","1.prakASa"
;I could see a light in the room.
;muJe kamare meM prakASa xiKAyI xe rahA WA.
;
;"light","V","1.jalAnA"
;     Mohan lighted the match-stick.
;     --"2.sulagAnA"
;     Mohan lighted the cigarette.
;     --"3.prakASiwa-karanA"
;     The torch lighted the way for him.
;     --"4.prasanna_honA"
;     His face lighted up when he heard the news.
;
;'light' Sabxa ke uxAharaNa xeKa kara Ora Upara xiye uxAharaNoM se BI 'aMgrejZI'
;kI eka viSeRawA kI ora XyAna jAwA hE. aMgrejZI meM aksara vahI Sabxa kriyA
;rUpa meM BI AwA hE Ora saMjFA rUpa meM BI. yaha BI mAwra kyA saMyoga hE ?
;
;yaha aMgrejZI kI eka viSeRawA hE. saMjFA, kriyA yA viSeRaNa hone ke bAvajUxa
;'light' ke saBI arWa paraspara judZe hEM.
;
;1. aMgrejZI BARA meM aksara koI BI saMjFA Sabxa kriyA ke rUpa meM
;prayukwa ho jAwA hE.aMgrejI BARA mez kisI BI saMjFA Sabxa se kriyA
;Sabxa ke nirmANa ke liye eka "0" prawyaya hE jisakA sAXAraNawayA "_*_karanA"
;arWa mAnA jA sakawA hE. awaH "Mohan lighted the lamp" isa uxAharaNa ke bala para hama
;"prakASa_xene_yogya_karanA" yaha arWa mAna sakawe hEz
;
;2. kisI BI XAwu ke sAWa i)vyApAra ii)Pala saMlagna howe hEz XAwu ke arWa kA
;viswAra vyApAra-sAmya, Pala-sAmya, upavyApAra Axi mez howA hE.
;uxA.
;            vyApAra-sAmya Mohan lighted the cigarette.
;            Pala-sAmya   Mohan lighted his 4-celled torch before entering
;                       the corridor.
;            upa-vyApAra(karaNa kA) The torch lighted the way for him.
;
; 3. AlaMkArika-prayoga
;           prasanna aWavA uwsAhiwa hone para cehare para KUna kA xOrA baDa jAne se
;           jo camaka A jAwI hE use kAvyamayI BARA mez vyakwa karane ke liye
;           His face lighted up when he heard the news.
;           EsA prayoga kiyA jA sakawA hE.
;
; 4. cUzki prakASa awyanwa halakA howA hE awaH ho sakawA hE ki light kA
;           "halakA-" yaha arWa A gayA ho, nahIz wo isakA yaha arWa nipAwiwa hE EsA
;           BI mAna sakawe hEz
;
;isa carcA ke AXAra para 'light' kA sUwra nimna hogA.
;
;anwarnihiwa sUwra ;
;
;prakASa --prakASa_xene_yogya_karanA --xIpa_jalAnA --saMxIpana
;
;sUwra : prakASa_[ke_yogya_karanA]/halakA
;
;
;PREVIOUS	HEAD  NEXT
;
;
;
