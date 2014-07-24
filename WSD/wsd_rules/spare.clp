
(defrule spare0
(declare (salience 5000))
(id-root ?id spare)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sparing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  spare.clp  	spare0   "  ?id "  kama )" crlf))
)

;"sparing","Adj","1.kama"
;He made sparing use of his groceries.
;
(defrule spare1
(declare (salience 4900))
(id-root ?id spare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SeRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spare.clp 	spare1   "  ?id "  SeRa )" crlf))
)

;"spare","Adj","1.SeRa"
(defrule spare2
(declare (salience 4800))
(id-root ?id spare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spare.clp 	spare2   "  ?id "  bacA )" crlf))
)

;@@@ Added by jagriti(30.12.2013)
;Take some spare clothes in case you get wet.[oald]
;भीग जाने की स्थिति के लिए कुछ अतिरिक्त कपड़े ले लो.
(defrule spare3
(declare (salience 4950))
(id-root ?id spare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 clothes|room)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awirikwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spare.clp 	spare3   "  ?id "  awirikwa )" crlf))
)

;@@@ Added by jagriti(30.12.2013)
;He's studying music in his spare time.[oald]
;वह अपने खाली समय में संगीत का अध्ययन कर रहा है.
(defrule spare4
(declare (salience 4955))
(id-root ?id spare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spare.clp 	spare4   "  ?id "  KAlI )" crlf))
)

;"spare","V","1.bacAnA"
;We should always spare others when they are in danger.
;--"2.xe_xenA"
;Could you please spare come food for me?
;--"3.bacAnA/xayA_karanA"
;The little boy begged the terrorists to spare his parent's life.
;
;LEVEL 
;
;
;
;Headword : spare
;
;'spare' ke arWoM ko sUwrabaxXa karane kA prayAsa :-
;
;
;Examples --
; "spare","Adj","awirikwa"  
; We do not have a spare bedroom.
; hamAre pAsa eka awirikwa kamarA nahIM hE.  awirikwa <-- jo baca gayA
;
; They have no spare time.
; unake pAsa bilkula awirikwa samaya nahIM hE.
;nimnaprakAra se kahA jAegA : 'unako bilkula Pursawa nahIM hE'.
;
;N
; Carry a spare for an emergency.
; ApAw-sWiwi ke liye eka awirikwa(tAyara) le calo.
;
; "spare","V","bacA_kara_[Coda]"
; They killed the men but spared the children.
; unhoMne puruRoM ko mAra xiyA lekina swriyoM Ora baccoM ko CodZa xiyA   CodZa_xiyA<-- yAni bacane xiyA
; 
;He can spare himself an unnecessary journey.
;vaha svayaM ko eka anAvaSyaka yAwrA se bacA sakawA hE.    bacAnA
;
; Can you spare some money.
;kyA wuma kuCa pEsA xe (bacAkara) sakawe ho   <---apane pAsa ke pEse meM kuCa pEsA bacA kara xe sakawe ho.
;    
;Upara xiye uxAharaNoM ke AXAra para nimna sUwra banAyA jA sakawA hE :-
;
;sUwra : awirikwa[<bacA]
;     
;'spare'  kA nimna prayoga BI howA hE.
; 
;"WodZA"
;
;"pawalA"
; He has a tall spare figure.
; vaha lambA pawalA hE.
;
;Upara xiyA sUwra isa prayoga ko BI samete hE. yAni 'spare' kA jo mUla arWa hE
;usase hI yaha prayoga BI judZa rahA. hAz yaha sawahI wOra para nahIM xiKawA. kinwu jaba
;kuCa bacawA hE wo aksara vaha WodZA howA hE. 'bace_hue' ke sAWa 'WodZA_hone'
;kA BAva BI yahAz judZa jAwA hE. awaH 'spare' kA arWa 'WodZA' waka 'extend'
;ho gayA. Ora jaba koI vaswu pawalI howI hE wo usameM kama hone kA BAva BI howA
;hE. isaprakAra 'WodZA' kA 'BAva' viSiRta saMxarBa meM pawale ke liye BI ho gayA.
;yahAz anwarnihiwa sUwra kuCa isaprakAra banegA :-
;
;anwarnihiwa sUwra ;
;bacA_KucA --jo bacA vaha awirikwa/jo bacA vaha WodZA
;                                      |
;                                      ---yAni kama ---pawalA
;
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_spare3
(declare (salience 4950))
(id-root ?id spare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 clothes|room)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awirikwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " spare.clp   sub_samA_spare3   "   ?id " awirikwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_spare3
(declare (salience 4950))
(id-root ?id spare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 clothes|room)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awirikwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " spare.clp   obj_samA_spare3   "   ?id " awirikwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_spare4
(declare (salience 4955))
(id-root ?id spare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " spare.clp   sub_samA_spare4   "   ?id " KAlI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_spare4
(declare (salience 4955))
(id-root ?id spare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " spare.clp   obj_samA_spare4   "   ?id " KAlI )" crlf))
)
