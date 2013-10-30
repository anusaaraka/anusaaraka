
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
(defrule light2
(declare (salience 4800))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KuSI_se_Kila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " light.clp	light2  "  ?id "  " ?id1 "  KuSI_se_Kila_jA  )" crlf))
)

;Her face lights up when she sees me.
;jaba BI vaha muJe xeKawI hE,usakA ceharA KuSI se Kila jAwA hE
(defrule light3
(declare (salience 4700))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prakASiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " light.clp	light3  "  ?id "  " ?id1 "  prakASiwa_kara  )" crlf))
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

(defrule light6
(declare (salience 4400))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective )
(id-cat_coarse =(+ ?id 1) ~noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  light.clp 	light6   "  ?id "  prakASa )" crlf))
)

(defrule light7
(declare (salience 4300))
(id-root ?id light)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
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
