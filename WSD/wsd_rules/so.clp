
(defrule so0
(declare (salience 5000))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(not (kriyA-vAkya_viBakwi ?i ?id));The sky is blue, so it is likely that Joe will come.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so0   "  ?id "  iwanA )" crlf))
)

(defrule so1
(declare (salience 4900))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(or (id-cat_coarse ?id preposition)  (kriyA-vAkya_viBakwi ?i ?id));The sky is blue, so it is likely that Joe will come.
;(or (id-cat_coarse ?id preposition)  (subject-conjunction ?i ?id));The sky is blue, so it is likely that Joe will come.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isaliye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so1   "  ?id "  isaliye )" crlf))
)

;The POS taggers assign RB/IN POS. Based on it the above rules have been added.
(defrule so2
(declare (salience 4800))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isaliye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so2   "  ?id "  isaliye )" crlf))
)

(defrule so3
(declare (salience 4700))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb )
(id-cat_coarse =(+ ?id 1) adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so3   "  ?id "  iwanA )" crlf))
)

(defrule so4
(declare (salience 4600))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root =(- ?id 1) do)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vEsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so4   "  ?id "  vEsA )" crlf))
)
; Modified id-word as id-root ---- sukhada 

; I did so
(defrule so5
(declare (salience 4500))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 2) as)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so5   "  ?id "  uwanA )" crlf))
)

;Why be so cruel as to take into pieces?
;Is it so beautiful as this?
(defrule so6
(declare (salience 4400))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) do )
(id-word =(- ?id 2) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vEsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so6   "  ?id "  vEsA )" crlf))
)

; I asked him to do so.
(defrule so7
(declare (salience 4300))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) that )
(id-word =(- ?id 2) is)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vEsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so7   "  ?id "  vEsA )" crlf))
)

(defrule so8
(declare (salience 4200))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) that )
(id-word =(- ?id 2) was)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vEsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so8   "  ?id "  vEsA )" crlf))
)

; Is that so?
(defrule so9
(declare (salience 4100))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) is)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vEse_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so9   "  ?id "  vEse_hI )" crlf))
)

(defrule so10
(declare (salience 4000))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) was)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vEse_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so10   "  ?id "  vEse_hI )" crlf))
)

(defrule so11
(declare (salience 3900))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) am)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vEse_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so11   "  ?id "  vEse_hI )" crlf))
)

(defrule so12
(declare (salience 3800))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) are)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vEse_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so12   "  ?id "  vEse_hI )" crlf))
)

(defrule so13
(declare (salience 3700))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) were)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vEse_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so13   "  ?id "  vEse_hI )" crlf))
)

; so am I/so was he.
; The above rule was following_root=be, but the morph give is/was etc as the roots && not be! Hence 5 rules have been written.
(defrule so14
(declare (salience 3600))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so14   "  ?id "  iwanA )" crlf))
)

;She is so beautiful that everybody liked her.
(defrule so15
(declare (salience 3500))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so15   "  ?id "  iwanA )" crlf))
)

;He was so tired that he slept immediately.
(defrule so16
(declare (salience 3400))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so16   "  ?id "  iwanA )" crlf))
)

;"so","Adv","1.iwanA"
;Don't look so angry.
;--"2.awyaXika"
;I am so glad to see you in my house.
;I have not enjoyed so much in tour.
;--"3.usI_waraha/samAna_rUpa_se"
;He is not so good as his brother.
;The banner was so big.
;--"4.EsA"
;I was not sure if she will succeed but I certainly hope so.
;John is going to help me, or so he says.
;--"5.BI"
;He is divorced && so am I.
;
(defrule so17
(declare (salience 3300))
(id-root ?id so)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isaliye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  so.clp 	so17   "  ?id "  isaliye )" crlf))
)

;"so","Conj","1.isaliye"
;The shop was closed so I couldn't get my requirements.
;So, it was that he finally returned home.
;--"2.wAki"
;I gave you a map so you wouldn't get lost.
;--"3.wo_Pira"
;So I have a couple of drinks on the way home.
;So thats the end of this movie.
;So there is no proof, we can't do anything.
;
;LEVEL 
;Headword : so
;
;Examples --
;
;--"1.iwanA"
;Don't look so unhappy.
;iwanA xuKI mawa lago.
;I am so happy to see you.
;mEM wumheM xeKa kara iwanI KuSa hUz.
;It took us so long to finish the job.
;kAma samApwa karane meM hameM iwanA samaya laga gayA.
;I am not so sure about her.
;muJe usake bAre meM iwanA pakkA nahIM hE.
;--"2.EsA"
;Is she coming tomorrow ? I think so.
;kyA vaha kala A rahI hE ? mEM EsA hI socI hUz.
;She thinks that I don't care about her, but it isn't so.
;vaha socawI hE ki muJe usakI paravAha nahIM hE, para EsA nahIM hE.
;Will Afganistan be conquered ? It says so in the papers.
;kyA aPagAniswAna jIwa liyA jAegA ? samAcArapawroM meM EsA hI liKA hE.
;--"3.vaha"
;Were you in England at the time ? So I was.
;kyA Apa usa samaya iMglEMda meM We ? vaha mEM WA.
;They won the championship last year. So they did.
;piCale varRa unhoMne cEmpiyanaSipa jIwI WI. vaha unhoMne kiyA WA. 
;--"4.BI"
;They won the championship last year, so did we.
;piCale varRa unhoMne cEmpiyanaSipa jIwI WI. hamane BI.
;She has been to Rajasthan, so have I.
;vaha rAjasWAna ho AI hE, mEM BI.
;--"5.isaliye"
;The buses were not plying so I walked.
;baseM nahIM cala rahIM WI, isaliye mEM pExala AyA.
;--"6.jisase"
;Ram gave Rita the car so she could travel faster.
;rAma ne sIwA ko kAra xe xI jisase ki vaha jalxI yAwrA kara sake.
;--"7.wo"
;So, I watched the TV for three hours. What's wrong with that.
;mEMne wIna GaMte tI.vI. xeKA, wo. usameM kyA galawa hE.
;He's shorter by a few inches. So what? 
;vaha kuCa iMca CotA hE. wo kyA? 
;
;Upara xiye uxAharaNoM meM 'so' ke arWa alaga alaga A rahe hEM. aMgrejZI meM isa
;Sabxa kA prayoga alaga alaga rUpa meM howA hE. Ora prayogAnusAra isakA arWa baxala
;jAwA hE.
;
;isa Sabxa ke eka eka uxAharaNa ko lekara usake arWa kA viSleRaNa karake yaha xeKeM ki
;'so' kA apanA kyA arWa hE --
;
;pahale uxAharaNa ke wInoM vAkyoM meM kramaSaH 'KuSI, samaya Ora viSvAsa' ke saMxarBa
;meM 'so' kA prayoga hE. ina wInoM hI vAkyoM ko nimnaprakAra se pUrA kiyA
;jA sakawA hE --
;
;    muJe iwanI KuSI huI ki mEM bayAna nahIM kara sakawA   -- yA --
;    muJe iwanI KuSI huI jiwanI ravi ko parIkRA meM uwwIrNa hone meM huI WI
;
;    kAma samApwa karane meM iwanA samaya lagA ki..........
;    kAma samApwa karane meM iwanA samaya lagA jiwanA .........
;
;    usapara iwanA viSvA nahIM kara sakawe ki ..........
;    usapara iwanA viSvAsa nahIM kara sakawe jiwanA ........
;
;ina saBI uxAharaNoM meM 'so' eka AXikya kA BAva prakata karawA hE, waWA isa
;AXikyawA ke mAnaka ko vaha sunanevAle ke Upara CodZa xewA hE. yAni kahIM anyawra 
;isako puRta kiyA jA sakawA hE.
;
;xUsare uxAharaNa ke vAkyoM meM 'so' kA yaha guNa praKara rUpa se vyakwa howA hE.
;ina uxAharaNoM meM pahale hisse meM kahI gayI bAwa 'so' xvArA xUsare hisse meM
;puRta howI hE. awaH 'so' piCalI kahI gayI bAwa ke liye sarvanAma kA kAma karawA 
;hE.
;
;wIsare Ora cOWe arWa meM jahAz yaha hinxI meM 'vaha' Ora 'BI' ke arWa meM A rahA
;hE, vahAz BI yaha pahale kahI gayI bAwa kI puRti kara rahA hE.
;
;   'piCale varRa unhoMne cEmpiyanaSipa jIwI WI. 'vaha' wo unhoMne kiyA WA'
;
;  isa vAkya meM 'vaha' piCale pUre vAkya ke sWAna para A rahA hE. wo yahAz BI
;yaha eka waraha se vAkya ke liye sarvanAma kA kAma kara rahA hE. isaprakAra ke
;prayoga meM hinxI meM BI 'so' kA prayoga pracaliwa hE --
;
;   'piCale varRa unhoMne cEmpiyanaSipa jIwI WI. 'so' wo unhoMne jIwI WI.
;
;Ese hI nimna vAkya meM BI 'so' lagaBaga yahI BUmikA niBA rahA hE --
;
;  'mEM kala xillI jA rahI hUz. mEM 'BI'. 
;
;yahAz 'BI' piCale pUre vAkya kI ora saMkewa kara rahA hE.
;isaprakAra ke vAkyoM meM 'so' mUlawaH 'vahI' vAlA arWa liye hue howA hE.
;
;  'mEM kala xillI jA rahI hUz. vahI mEM karUzgA - yAni - mEM BI kala xillI 
;   jAUzgA.' 
;
;pAzcave Ora Cate uxAharaNoM meM 'so' kI BUmikA kuCa baxala rahI hE. yahAz yaha 
;pahale Ora xUsare vAkya ke bIca 'yojaka' kI BUmikA niBA rahA hE. eka EsA
;yojaka jo pahalI Ora xUsarI bAwa meM kArya-kAraNa waWA kArya-pariNAma sambanXa
;xiKAwA hE.
;
;    'baseM nahIM cala rahIM WI, 'isaliye' mEM pExala AyA'
;    'rAma ne mIrA ke liye kAra KarIxa xI hE 'jisase' vaha APisa samaya para pahuzca 
;     sake.'
;
;inameM se pahalevAle uxAharaNa meM 'isaliye' ke sWAna para hinxI meM 'so' kA prayoga BI ho sakawA hE -
;
;    'baseM nahIM cala rahIM WI, 'so' mEM pExala AyA'
;
;xUsare vAkya meM BI 'so' se kAma cala sakawA hE --
;
;    'rAma ne mIrA ke liye kAra KarIxa xI hE 'so ki' vaha APisa samaya para pahuzca 
;     sake.'
;
;anwima uxAharaNa 'so' kA eka bilkula Binna prayoga hE
;         
;    'mEM rojZa cAra GaNte tI.vI. xeKUzgA. wo kyA ?'
;
;yaxyapi isa prayoga meM 'so' bilkula Binna arWa liye hue prawIwa howA hE. 
;kinwu vicAra karane para lagawA hE ki yahAz BI 'so' mUlawaH 'kArya-pariNAma'
;saMbanXa ko hI bawA rahA hE. yahAz 'pariNAma' praSnavAcaka hE Ora isameM eka 
;'beparavAhI' kA BAva hE.
;
;isaprakAra aMgrejZI Sabxa 'so' prayoga kI xqRti se eka jatila Sabxa hE. kyoMki hinxI meM BI isake kuCa prayogoM meM 'so' hI rahawA hE awaH isake arWa kA viSleSaNa 'so'
;kA sUwra pakadZa kara kiyA jA sakawA hE.
;
;anwarnihiwa sUwra ;   
;                        
;                     iwanA
;                       ^  
;                       | (parimANa)                 
;                    ||----||
;    jisase(kAraNa-pariNAma)|| so`||---(kArya-kAraNa) isaliye
;                    ||----|| 
;                       | 
;                     EsA^vEsA
;
;
;sUwra : iwanA^EsA^wo
