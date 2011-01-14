
(defrule shoot0
(declare (salience 5000))
(id-root ?id shoot)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id shooting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id golIbArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  shoot.clp  	shoot0   "  ?id "  golIbArI )" crlf))
)

;"shooting","N","1.golIbArI"
;The number shootings during robberies is increasing.
;--"2.SikAra"
;The shooting of Bengal tiger is being banned.
;
(defrule shoot1
(declare (salience 4900))
(id-root ?id shoot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMkura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shoot.clp 	shoot1   "  ?id "  aMkura )" crlf))
)

;"shoot","N","1.aMkura"
;The healthy green shoots on a plant enhance its beauty.
;--"2.SikAra"
;Some people often make a visit to forest just to take pleasure of shoot.
;--"3.Poto"
;On Ram's birthday a photographer was appointed for a special shoot.
;
(defrule shoot2
(declare (salience 4800))
(id-root ?id shoot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golI_mAra))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shoot.clp 	shoot2   "  ?id "  golI_mAra )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  shoot.clp     shoot2   "  ?id " ko )" crlf)
)
)

;"shoot","V","1.golI_mAranA"
;Don't shoot - I surrender.
;--"2.GAyala_karanA"
;She went out shooting rabbits.
;--"3.calAnA"
;Do you know how to shoot a pistol?
;--"4.golI_calAnA"
;Get a riffle that shoots straight.
;--"5.SikAra_KelanA"
;Shoot pheasants.
;--"6.PZoto_lenA/PZilma_banAnA/calaciwriwa_karanA"
;Cameras ready? OK, shoot.
;
;LEVEL 
;
;
;Headword : shoot
;
;Examples :
;
;1. The man shot at the guard.
;   usa AxamI ne cOkIxAra para golI calAyI
; - The AxamI golI_calAyA at the cOkIxAra.
;
;2. The gunman shot a hole in the door.
;   banxUkaXArI ne xaravAjZe meM golI mAra kara Cexa kara xiyA.
; - The banxUkaXArI golI_calAyA a Cexa in the xaravAjZA.
;
;3. It is only a toy pistol, it doesn't shoot.
;   yaha sirPa eka KilOne kI banxUka hE, isase golI nahIM calawI.
; - yaha hE sirPa a KilOnA banxUka, yaha nahIM golI_calAwI.
;
;4. The truck shot past us.
;   traka hamAre pAsa se golI-jEse wejZI se gayA
; - the traka golI_calA past hama.
;
;5. Flames were shooting up sky high.
;   lapateM AsamAna waka uTa rahI WIM.
; - lapateM WIM golI_calI up AsamAna meM Uzce
;
;6. The pain shot up her leg. 
;   xarxa usake pAzva meM wejZI se uTA.
; - the xarxa golI_calA up usake{ba.} pAzva.
; 
;7. Journalists were shooting questions at the Members of Parliament.
;   pawrakAra saMsaxa saxasyoM para praSna xAga rahe We
; - pawrakAra{ba.} We_rahe_golI_calA praSna{ba.} at the saMsaxa saxasya{ba.}.
;
;8. He shot a goal at the last minute.
;   usane anwima kRaNa meM gola xAgA
; - vaha golI_calAyA eka gola at the AKirI kRaNa.
;
;9. The doctor shot some drug into his arm.
;   dOYktara ne usake hAWa meM xavA kA injEkSana lagAyA.
; - the dOYktara golI_calAyA kuCa xavA into usake hAWa 
;
;10. The movie was shot in black && white.
;    calaciwra Svewa-SyAma liyA gayA WA
; - the calaciwra WA golI_calAyA in Svewa Ora SyAma
;
;Upara xiye uxAharaNoM se EsA lagawA hE ki aMgrejZI Sabxa 'shoot' meM kaI asambaxXa arWa hEM. kinwu gaharAI se socane para xiKawA hE ki vAswava meM 'shoot' kA mUla arWa wo 'golI xAganA' hE. prayoga meM usase kaI arWoM ne janma le liyA. yaha bAwa nIce xiye ciwra se spaRta hogI  
;
;'shoot' ke kuCa arWa kriyA ke vyApAra se judZe hEM Ora kuCa isake Pala se 
;
;'shoot' ke vyApAra meM trigara xabAne kI kriyA hE.
;Ora Pala meM wIvrawA se golI nikalane kI.
;
;
;               shoot   --   golI_xAganA
;                              /  \
;                            /      \
;                          /          \
;                  vyApAra-sAmya      Pala-sAmya
;                     |                  |
;               vyApAra = trigara xabAnA  Pala =  golI kA wIvra gawi se nikalanA
;                 |                      |
;               ---------------         ------------
;               |             |         |          |    
;         banxUka xAganA    kEmarA xAganA  golI calanA   wIvra gawi se honA{acAnaka}
;                                                  |
;                         ----------------------------------
;                        |                       |         |
;        gAdZI, bOYla iwyAxi kA calanA   naI kopaloM kA nikalanA  xAma, xarxa Axi kA caDZanA 
;
;sUwra : [golI]_xAganA^caDZanA
;
;isase sambaxXa Sabxa 'shot' BI xeKeM. usase BARAez kisI-kisI Sabxa kA prayoga ke swara para kisa prakAra arWa-sAmAnyIkaraNa karawI hEM yaha BI xiKegA.
;
