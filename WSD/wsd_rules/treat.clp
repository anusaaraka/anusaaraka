
(defrule treat0
(declare (salience 5000))
(id-root ?id treat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ananxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  treat.clp 	treat0   "  ?id "  Ananxa )" crlf))
)

;"treat","N","1.Ananxa"
;The concert was a real treat for the music lovers.
;--"2.KarcA"
;This is her treat. Let's go.
;
(defrule treat1
(declare (salience 4900))
(id-root ?id treat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavahAra_kara))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  treat.clp 	treat1   "  ?id "  vyavahAra_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  treat.clp     treat1   "  ?id " se )" crlf)
)
)

;"treat","VI","1.vyavahAra_karanA"
;We have to treat animals in a human way .
;--"2.mAnanA"
;Krishna treated Sudama as his close friend.
;--"3.vivecana_karanA"
;The subject is treated vividly in the following chapter .
;--"4.cikiwsA_karanA"
;She was treated for Jaundice.
;--"5.saMsAXiwa_karanA"
;Treat the crops with pesticide.
;--"6.kA_Karca_karanA"
;She treated her friends to an icecream.
;
;LEVEL 
;Headword : treat
;
;Examples --
;"treat","VI","1.vyavahAra_karanA"
;She hates people who treat animals badly.
;vaha una logoM se naParawa karawI hE jo paSuoM se burA vyavahAra karawe hEM
;
;"2.mAnanA"<--ke jEsA vyavahAra karanA 
;Krishna treated Sudama as his close friend.
;kqRNa suxAmA ko apanA karIbI miwra mAnawe We
;
;"3.vivecana_karanA"<--viRaya ko spaRta karanA<--viRaya ke sAWa uciwa vyavahAra karanA
;The subject is treated vividly in the previous class .
;viRaya kA vivecana pUrva kakRA meM sajIvawA se kiyA gayA WA.
;                                                   
;"4.cikiwsA_karanA"<--upacAra karanA<-- upacAra ke liye uciwa vyavahAra karanA 
;Last year she was treated for typhoid.
;piCale varRa usakI cikiwsA tAiPAyada ke liye kI gayI WI.
;
;"5.upacAriwa karanA/saMsAXiwa_karanA"<--upacAra karanA
;Treat the crops with pesticide.
;Pasala ko kItANunASaka xavA se upacAriwa karo.
;
;"6.kA_Karca_karanA/KilAnA"<--KarcA uTAkara Ananxiwa honA yA karanA<--Ananxa_xene_ke_liye_vyavahAra karanA 
;He treated his friends to an icecream.
;usane apane xoswoM ko AisakrIma KilAI.
;
;"treat","N","1.Ananxa"
;The concert was a real treat for the music lovers.
;samAroha saMgIwa premiyoM ko vAswavika Ananxa xene vAlA WA.
;
;"2.xAvawa/KarcA"<--muJe xAvawa KilA kara Ananxa milegA
;This is her treat. Let's go.
;yaha usakI xAvawa hE.calo caleM
;                        
;       nota:--uparyukwa'treat'Sabxa ke saBI vAkyoM para gOra kareM wo kriyA Ora saMjFA              ke samaswa vAkyoM ke viBinna arWoM ko sUwra kI sahAyawA se jodZA
;            jA sakawA hE. 
;                       sUwra : vyavahAra`[>Ananxa`]
;
;Discussion on Feedback -
;
;purAnA sUwra - uciwa_vyavahAra[>Ananxa]   5/11/2001
;
;sUwra meM 'uciwa' kI mOjUxagI ke viruxXa uxAharaNa -
;
;  ill treated
;
;* rugNa uciwa_vyavahAra`[>Ananxa]_{ed/en}
;
;yaxi sUwra meM 'uciwa_vyavahAra_ rahA wo Upara xiye uxAharaNa jEsA Autaputa A
;sakawA hE.  'vyavahAra' apane Apa meM 'treat' kA bIjArWa xe sakawA hE. yaxi sUwra
;'vyavahAra`[>Ananxa]' ho wo Upara xiye aMgrejZI paxa kA Autaputa nimna AegA -
;
;  ill treated
;
; rugNa vyavahAra`[>Ananxa]_{ed/en}
;
;yAni 'anuciwa_vyavahAra'. awaH isa pramANa ke AXAra para sUwra meM se 'uciwa'
;Sabxa ko nikAla  sakawe hEM.
;
