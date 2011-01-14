
(defrule exhaust0
(declare (salience 5000))
(id-root ?id exhaust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exhaust.clp 	exhaust0   "  ?id "  Waka )" crlf))
)

(defrule exhaust1
(declare (salience 4900))
(id-root ?id exhaust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id recaka_yaMwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exhaust.clp 	exhaust1   "  ?id "  recaka_yaMwra )" crlf))
)

;default_sense && category=verb	WakA_xe	0
;"exhaust","VT","1.WakA_xenA"
;This kind of work exhausts me
;
;LEVEL 
;Headword : exhaust
;
;Examples --
;
;V
;--"1.WakA_xenA"
;This kind of work exhausts me
;isa prakAra kA kAma muJe WakA xewA hE.
;--"2.samApwa_karanA/niHSeRa_karanA"
;Increased use of the well water has exhausted it.
;kuez ke pAnI ke aXika prayoga ne ise niHSeRa_kara_xiyA hE.
;The climb to the top has exhausted her energy.
;Upara waka caDZane ne usakI Sakwi samApwa ho gayI.
;All our money is exhausted in the construction of the house.
;makAna banAne meM hamArA sArA pEsA samApwa ho gayA.
;N
;--"3.recaka"
;The area is full of smell of the exhaust.
;pUre ilAke meM recaka kI bU BarI hE.
;--"4.recaka_pampa(EkjZOYsta)"
;You should change the exhaust of your car.
;wumheM apanI kAra kA recana_yaMwra baxala lenA cAhiye.
;
;ukwa uxAharaNoM meM 'exhaust' Sabxa kA UparI wOra se koI eka arWa spaRta nahIM
;xiKa rahA. para isake prayogoM para yaxi XyAna xeM wo EsA lagawA hE ki isameM mUla 
;BAva 'anxara_kI_vaswu_ko_KIMca_nikAla_kara_kuCa_SeRa_na_CodZane' kA hE. uxAharaNa 1
;meM kAma karane ke liye Sakwi kA prayoga apane anxara kI UrjA ko KIMcawA hE
;waWA anxara jaba UrjA SeRa nahIM rahawI wo vyakwi WakAna mahasUsa karawA hE. uxAharaNa
;xo meM BI kuez ke pAnI ke saMxarBa meM BI kuCa EsA hI arWa hE. uxAharaNa 4 meM
;recaka_pampa meM BI mUla arWa Ese yaMwra kA hE jo anxara kI ganxI havA ko 
;KIMca_kara bAhara nikAlawA hE. uxAharaNa 3 nikAlI huI ganxI havA ke saMxarBa meM hE
;awaH isa Sabxa kA mUla arWa 'SeRa_na_rahane_waka_KIMca_nikAlanA{UrjA, havA, pAnI
;iwyAxi} ho sakawA hE. jisase anya arWa prajaniwa howe hEM. yaxyapi yaha arWa hinxI meM
;kahIM BI prakata rUpa se prayukwa nahIM howA kinwu isakA bIjArWa yahI prawIwa howA hE.
;
;isakA anwarnihiwa hogA ;
;
;                  SeRa_na_bacane_waka_KIMca_nikAlanA
;                           |
;                           |
;                |----------|------------|
;          (karwA) |        |pariNAma      |(kriyA)
;                |          |            |
;              recaka_yaMwra  (bU_vAlA_vAwAvaraNa) samApwa_karanA
;                                        WakA_xenA
;
;
;sUwra :samApwa_karanA[<KIMca_nikAlanA...]^[recaka]_yaMwra
;
