
(defrule arm0
(declare (salience 5000))
(id-root ?id arm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arm.clp 	arm0   "  ?id "  bAhu )" crlf))
)

(defrule arm1
(declare (salience 4900))
(id-root ?id arm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Saswra_yukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arm.clp 	arm1   "  ?id "  Saswra_yukwa_kara )" crlf))
)

;"arm","VT","1.Saswra_yukwa_karanA"
;Two men armed with rifles entered && looted the bank
;
;LEVEL 
;Headword : arm
;
;Examples --
;
;N.
;     
;--"1.bAzha"
;Lata was holding the baby in her arms.  
;lawA bacce ko apanI goxa meM liye hue WI
;The baby rushed into his mother's arms.
;baccA wejZI se apanI mAz ki bAzhoM meM [Gusa] gayA 
;--"2.bagala" <--bAzha kA nicalA hissA
;Meena was carrying a book under her arm.
;mInA apanI bagala meM {xabAkara} eka kiwAba le jA rahI WI
;--"3.vaswrAxi_kI_bAzha"
;This dress has long arms.
;isa dresa kI bAheM bahuwa lambI hEM
;--"4. hawWA" <--kursI Axi kI bAzha 
;Put all the chairs with broken arms in the next room 
;tUte hawWoM vAlI saBI kursiyAz agale kamare meM raKa xo
;--"5.SAKA" <--vqkRa, naxI Axi kI bAzha
;This arm of the river goes towards the valley
;naxI kI yaha XArA GAtI kI ora jAwI hE
;
;V.
;
;--"6.SaswrAxi se lesa honA" <--bAzha_meM_honA
;The police was not appropriately armed for this task. 
;isa kAma ke liye pulisa sahI wOra se SaswroM se lEsa nahIM WI
;Mohan was fully armed for all the questions in the interview
;mohana intaravyU ke saBI praSnoM ke liye pUrI wOra se wEyAra WA
;
;anwarnihiwa sUwra ; 
;
;                         bAzha
;                          |
;  |-----------------------|------------------|
;  |                       |                  |
;jo hAWa meM XAraNa kiyA jAe  Akqwi            aMga{hAWa_ke_samAna_kAma_meM_AnevAlA}
;  |                       |                  |
; Saswra             kapadZe_kI_bAzha   -|-------|--------|
;                                     |       |        |
;                                 hawWA{kursI} SAKA{vqkRa} XArA {naxI}
;
;
;sUwra : bAzha`
