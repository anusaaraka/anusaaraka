
(defrule heavy0
(declare (salience 5000))
(id-root ?id heavy)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heavy.clp 	heavy0   "  ?id "  BArI )" crlf))
)

(defrule heavy1
(declare (salience 4900))
(id-root ?id heavy)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heavy.clp 	heavy1   "  ?id "  BArI )" crlf))
)

;"heavy","Adj","1.BArI"
;eka hamAla sO kilo"heavy"borA pITa para uTA lewA hE.
;
;
;LEVEL 
;Headword : heavy
;
;Examples --
;
;--"1.BArI"
;The suitcase is very heavy.
;sUtakesa bahuwa BArI hE.
;He does the heavy work in the lab.
;vaha lEba meM BArI kAma karawA hE.
;Kanti is heavy with child (pregnant)
;kAnwI (ke pAzva) bacce ke kAraNa BArI hE.
;We had heavy rain yesterday.
;kala hamAre yahAz BArI varRA huI.
;--"2.bahuwa_[BArI]"
;The city had heavy casualties due to the earth quake.
;BUkampa ke kAraNa Sahara meM bahuwa mOweM huIM (BArI nuksAna) huA.
;This road has heavy traffic in the evenings.
;SAma ko isa sadZaka para bahuwa trEPika howA hE. 
;He is a heavy drinker.
;vaha bahuwa BArI piyakkadZa hE.
;--"3.laxe"
;The road was lined on both sides with trees heavy with apples.
;sadZaka ke xono ora seboM se laxe pedZoM kI kawAreM WIM.<--pedZa seboM ke BAra meM xabe hEM
;--"4.vyaswa"
;She has a heavy date tomorrow.
;kala usakA bahuwa vyaswa xina hE. <---kAma kA BAra honA
;--"5.BArI_karanevAlA"
;He had a heavy meal yesterday.
;kala hama logoM ne (peta) BArI karanevAlA KAnA KAyA.
;The book made a heavy reading.
;kiwAba paDZane meM (sira) BArI karanevAlI hE.
;--"6.jZora_se"
;Meera had a heavy fall.
;mIrA jora se gira gayI. 
;--"7.saKwa"
;Meeta is rather heavy with her children.
;mIwA apane baccoM ke sAWa kAPI saKwa hE. 
;
;ina uxAharaNoM se eka pramuKa arWa jo uBara kara AwA hE vaha 'BArI' kA hE. xeKanA yaha hE ki anya arWa isase kEse judZe hEM. uxAharaNa 1 se 5 waka wo spaRtawaH 'BArI' kA arWa liye huse hEM. praSna 6 Ora 7 kA hE. uxAharaNa 6 meM  'girane' ke liye 'BArI' kA prayoga hE.samBavawaH yahAz saMkewa girane ke 'BArI pariNAma' para hE. EsA giranA jisakA pariNAma 'BArI cota' ho. isIprakAra se uxAharaNa 7 meM SAyaxa saMkewa 'anuSAsana ke BAra' kI ora hE.
;isa waraha se 'heavy' Sabxa ke alaga alaga arWoM ke paraspara sambanXa ko nimna wAra se jodZA jA sakawA hE --
;
;anwarnihiwa sUwra ;
;
; 
;                              BArI -BArI karanevAlA
;                               |
;                               BAravAlA
;                 |-------------|--------------|
;               (vaswu kA BAra)                (kAma_kA)
;                 |aXikaraNa                      |aXikaraNa
;                laxA                          vyaswa
;                              
;
; sUwra : BArI`         
