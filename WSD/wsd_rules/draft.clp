
(defrule draft0
(declare (salience 5000))
(id-root ?id draft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id drAPta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draft.clp 	draft0   "  ?id "  drAPta )" crlf))
)

;"draft","N","1.drAPta/huMdI"
;He took a sleeping draft
;--"2.masOxA"
;The draft of the letter is ready.
;
(defrule draft1
(declare (salience 4900))
(id-root ?id draft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id masOxA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draft.clp 	draft1   "  ?id "  masOxA_banA )" crlf))
)

;"draft","VT","1.masOxA_banAnA/liKanA"
;Draft a speech
;--"2.BarwI_karanA"
;He was drafted in the army the next year.
;
;LEVEL 
;
;Headword : draft             
;
;<A HREF="example-draught.htm">draught</A>
;
;Examples --
;
;"draft","N","1.drAPta/huMdI"
;He took a sleeping draft
;usane eka huMdI lI.
;--"2.masOxA"
;The draft of the letter is ready.
;pawra kA masOxA wEyAra hE.
;A draft of cold air entered the room through the open window.
;KulI KidZakI se TaNdI havA kA eka JOMkA anxara AyA.
;--"4.GUzta"
;He finished the whole glass of the juice in one draft.
;usane jUsa kA pUrA glAsa eka GUzta meM Kawama kara xiyA.
;--"5.xaswA"
;The draft of soldiers were sent in different directions.
;sEnikoM se xaswe alaga alaga xiSAoM meM Beja xiye gaye.
;--"6.GAna"
;He has four draft of beer.
;usake pAsa bIyara ke cAra 
;
;"draft","VT","1.masOxA_banAnA/liKanA"
;
;Draft a speech
;BARaNa kA masOxA wEyAra kIjiye.
;--"2.BarwI_karanA"
;He was drafted in the army the next year.
;usake agale sAla vaha usako senA meM BarwI kiyA gayA.
;--"3.wEnAwa_karanA"
;The police has been drafted to control the situation.
;sWiwi ko niyaMwraNa meM lAne ke liye senA ko wEnAwa kiyA gayA hE.
;--"4.KIMcanA"
;He drafted a large number of fishes last time.
;piCalI bAra usane maCaliyoM kI eka badZI saMKyA (pAnI_se) KIMcI. 
;
;ukwa uxAharaNoM se aMgrejZI Sabxa 'draft' ke Binna arWoM ke paraspara 
;sambanXa ko samaJane meM sahAyawA milawI hE. yaxi XyAna se xeKeM wo saBI uxAharaNoM
;meM eka badZI saMKyA yA mAwrA meM se eka CotA hissA 'nikAlane' yA 'KIMcane'
;kA BAva. yaha hissA 'eka bAra meM nikAlA huA hissA hE'. isI liye 'havA kA eka
;JoMkA, pAnI yA kisI BI xravya kA eka GUzta, senA kI eka tukadZI, maCalI kA eka
;bAra meM pakadZA hissA (jise yahAz 'GAna' kahA hE)', Axi prayoga samBava hEM.
;yaxi kriyA prayoga xeKeM wo unameM BI yahI BAva hE. 'BarwI karanA' meM 'sabameM
;se kuCa ko cuna lene kA BAva hE yAni kuCa ko eka viSeRa kArya ke liye alaga 
;nikAla lenA',isIprakAra 'wEnAwa_karanA' meM BI 'kuCa ko eka kArya viRiRta
;ke liye alaga kara lenA' kA hI BAva hE. maCalI pakadZane meM BI vahI 'nikAlanA'
;kA BAva hE. 
;
;'masOxA' Ora 'masOxA_liKanA' paraspara sambanXiwa para SeRa se alaga
;arWa prawIwa howe hEM. kinwu isameM BI 'liKI jAnevAlI vaswu kA pahalA KIMcA
;ciwra' kA BAva hE. awaH yahAz BI eka waraha se 'nikAlane(ciwra)' vAlA BAva hE.
;
;'huMdI' vAle arWa meM BI 'nikAlane' kA arWa xiKawA hE. yahAz 'huMdI ko xekara
;kuCa nikAlA' jA sakawA hE. awaH 'draft' kA bIjArWa 'eka bAra meM nikAlI jAne
;vAlI mAwrA' kA hE.
;
;anwarnihiwa sUwra ;
;
;
;                   nikAla_lenA{eka_bAra_meM}
;                        |
;            |-----------|----------| 
;           saMjFA                    kriyA
;            |                         | 
;   |--------|---------|             wEnAwa_karanA, BarwI karanA iwyAxi
;   JoMkA(karwA) GUzta(karma) huMdI(karaNa)        |
;             xaswA, GAna Axi                 cuna_lenA
;
;sUwra : nikAla_lenA`[>huMdI]
