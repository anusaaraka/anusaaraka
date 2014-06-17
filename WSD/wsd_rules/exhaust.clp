;$$$ modified by pramila(BU) on 05-12-2013
;This kind of work exhausts me.
(defrule exhaust0
(declare (salience 5000))
(id-root ?id exhaust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WakA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exhaust.clp 	exhaust0   "  ?id "  WakA_xe )" crlf))
)

;@@@ added by pramila(BU) on 05-12-2013
(defrule exhaust1
(declare (salience 5000))
(id-root ?id exhaust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Waka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exhaust.clp 	exhaust1   "  ?id "  Waka_jA )" crlf))
)

;@@@ added by pramila(BU) on 05-12-2013
;But a stage will come in the life of a star when it exhausts the available hydrogen in its central hot region.
;परंतु हर तारे के जीवन में एक ऐसी अवस्था आयेगी जब उसके केंद्रीय गर्म क्षेत्र में हाइड्रोजन खत्म हो जायेगी।
;The Sun will also go through this process after it has exhausted its central fuel of hydrogen.
;सूर्य भी इस प्रक्रिया से गुजरेगा, जब इसका हाइड्रोजन का केंद्रीय ईंधन खत्म हो जायेगा।
(defrule exhaust2
(declare (salience 3000))
(id-root ?id exhaust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kawma_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exhaust.clp 	exhaust2   "  ?id "  Kawma_ho_jA )" crlf))
)


;@@@ added by pramila(BU) on 05-12-2013
;Increased use of the well water has exhausted it.
;kuez ke pAnI ke aXika prayoga ne ise samApwa_kara_xiyA hE.
(defrule exhaust3
(declare (salience 5000))
(id-root ?id exhaust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(viSeRya-viSeRaNa  ?id1 ?id2)
(id-root ?id2 increase)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exhaust.clp 	exhaust3   "  ?id "  samApwa_kara_xe )" crlf))
)



(defrule exhaust4
(declare (salience 4000))
(id-root ?id exhaust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id recaka_yaMwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exhaust.clp 	exhaust4   "  ?id "  recaka_yaMwra )" crlf))
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

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_exhaust3
(declare (salience 5000))
(id-root ?id exhaust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(subject-subject_samAnAXikaraNa ?id1 ?id2)
(id-root ?id2 increase)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " exhaust.clp   sub_samA_exhaust3   "   ?id " samApwa_kara_xe )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_exhaust3
(declare (salience 5000))
(id-root ?id exhaust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(object-object_samAnAXikaraNa ?id1 ?id2)
(id-root ?id2 increase)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " exhaust.clp   obj_samA_exhaust3   "   ?id " samApwa_kara_xe )" crlf))
)
