
(defrule close0
(declare (salience 5000))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id closed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id banXA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  close.clp  	close0   "  ?id "  banXA_huA )" crlf))
)

;"closed","Adj","1.banXA_huA"
;She belongs to a closed family.
;
;
(defrule close1
(declare (salience 4900))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWAyI_wOra_pe_baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " close.clp	close1  "  ?id "  " ?id1 "  sWAyI_wOra_pe_baMxa_kara  )" crlf))
)

;Many of the city's leading restaurants closed down for the whole year.
;Sahara ke bahuwa se reswarAM pUre sAla ke liye baMxa ho gaye
(defrule close2
(declare (salience 4800))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAsa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " close.clp	close2  "  ?id "  " ?id1 "  pAsa_A  )" crlf))
)

;The truck was closing in to the child.
;traka bacce ke pAsa A rahA WA
(defrule close3
(declare (salience 4700))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Cote_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " close.clp	close3  "  ?id "  " ?id1 "  Cote_ho  )" crlf))
)

;In the autumn the days begin to close in.
;pawaJadZa meM xina Cote hone lagawe hEM
(defrule close4
(declare (salience 4600))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrI_waraha_se_baMxa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " close.clp	close4  "  ?id "  " ?id1 "  pUrI_waraha_se_baMxa_kara_xe  )" crlf))
)

;They closed up in the house to prevent from thieves.
;unhone coroM se bacane ke lie apane ko Gara meM baMxa kara liyA
(defrule close5
(declare (salience 4500))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAsa_AnA_yA_ikatTe_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " close.clp	close5  "  ?id "  " ?id1 "  pAsa_AnA_yA_ikatTe_ho  )" crlf))
)

;The petals of some flowers close up while touching them.
(defrule close6
(declare (salience 4300))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AliMgana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " close.clp	close6  "  ?id "  " ?id1 "  AliMgana_kara  )" crlf))
)


(defrule close7
(declare (salience 4100))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " close.clp	close7  "  ?id "  " ?id1 "  samApwa_kara  )" crlf))
)


(defrule close8
(declare (salience 3900))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CotA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " close.clp	close8  "  ?id "  " ?id1 "  CotA_ho  )" crlf))
)


(defrule close9
(declare (salience 3700))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AliMgana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " close.clp	close9  "  ?id "  " ?id1 "  AliMgana_kara  )" crlf))
)



(defrule close10
(declare (salience 3600))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 round)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AliMgana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " close.clp	close10  "  ?id "  " ?id1 "  AliMgana_kara  )" crlf))
)


(defrule close11
(declare (salience 3400))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " close.clp	close11  "  ?id "  " ?id1 "  banxa_kara  )" crlf))
)


(defrule close12
(declare (salience 3200))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Amane_sAmane_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " close.clp	close12  "  ?id "  " ?id1 "  Amane_sAmane_ho  )" crlf))
)


(defrule close13
(declare (salience 3000))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id closed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id banXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  close.clp  	close13   "  ?id "  banXa )" crlf))
)

(defrule close14
(declare (salience 2900))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  close.clp 	close14   "  ?id "  nikata )" crlf))
)



(defrule close15
(declare (salience 2800))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  close.clp 	close15   "  ?id "  pAsa )" crlf))
)




;Modified by Meena(7.6.11) ;added (id-root ?id1 industrials|share)
;Added by Meena(20.5.11)
;The Dow Jones industrials closed at 2569.26. 
(defrule close16
(declare (salience 2700))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 industrials|share|dollar|pound) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMxa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  close.clp     close16   "  ?id "  baMxa_ho )" crlf))
)               



;Salience reduced by Meena(20.5.11)
(defrule close17
(declare (salience 0))
;(declare (salience 2700))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  close.clp 	close17   "  ?id "  baMxa_kara )" crlf))
)

(defrule close18
(declare (salience 2600))
(id-root ?id close)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " close.clp	close18  "  ?id "  " ?id1 "  banxa_kara  )" crlf))
)



;default_sense && category=noun	samApwi	0
;"close","N","1.samApwi"
;At the close of first innings the score was 158 for 2 wickets.
;
;
;LEVEL 
;
;
;Headword : close
;
;Examples --
;
;`close' ke viviXa prayoga--
;
;"close","Adj","1.pAsa"
;Our school is close to the theatre.
;hamArA skUla Wiyetara ke pAsa hE.
;            ---- < paxArWa-sambanXiwa nikatawA ----< yAni xUrI kama honA 
;<-- yAni banxa honA 
;--"2.sUkRma"
;He took a close look at the text.
;            ---- < nikata <-- nikatawA se xeKanA <--bArIkI se xeKanA < banxa honA
;--"3.bArIka"
;The razor gave a close shave.
;           ---- < paxArWa-sambanXiwa banxa hone meM nikatawA(bArIka) < banxa honA
;--"4.najZaxIkI"
;She is a close relative of mine.
;            ---- < pAsa < paxArWa-sambanXiwa banxa hone meM nikatawA < banxa honA
;--"5.samAna"
;There is no close resemblance between those twins.
;            ---- < pAsa < paxArWa-sambanXiwa banxa hone meM nikatawA < banxa honA
;--"6.barAbara_kA"
;The match was a close contest.
;            ---- < samAna < pAsa < paxArWa-sambanXiwa banxa hone meM nikatawA 
;                                                     < banxa honA
;--"7.ekasAWa"
;The army advanced in close formation.
;            ---- < barAbara kA < samAna < pAsa < paxArWa-sambanXiwa banxa
;                                             hone meM nikatawA < banxa honA
;--"8.banxa"
;He is kept in close confinement of her house.
;           ---- < banxa honA
;--"9.gopanIya"
;She was a bit close about her marriage.
;           ---- < banxa raKane yogya < banxa honA
;--"10.savqwa"
;The English vowel /i:/ is a close vowel.
;           ---- < saMkoca kA BAva < banxa honA
;--"11.kaMjUsa"
;He is very close with his things.
;           ---- < sakocI mAnasikawA vAlA vyakwi < saMkoca kA BAva < banxa honA
;
;"close","Adv","1.pAsa_WaeM"
;They sat close to each other in the photo.
;           ---- < pAsa < paxArWa-sambanXiwa banxa hone meM nikatawA < banxa honA
;
;"close","V","1.banxa_honA"
;The shops in the city close at 11:00 pm.
;--"2.banxa_karanA"
;The door was closed at night.
;           ---- < banxa honA
;--"3.samApwa_honA"
;The function closed with a vote of thanks.
;          ---- kisI cIja ke pravAhamAna aswiwwva kA banxa honA < banxa honA
;--"4.najZaxIka_AnA"
;The gap between the runners are beginning to close.
;          ---- < pAsa < paxArWa-sambanXiwa banxa hone meM nikatawA < banxa honA
;---------------------------------------------------------
;
;sUwra : pAsa`[<banxa_honA`]
;--------------
;
;     aMgrejI ke isa `close' Sabxa ke hinxI meM upariliKiwa viBinna arWa 
;prayogAnusAra samaJe jAwe hEM . ina viBinna arWoM meM eka sAmAnya arWa `banxa honA' 
;xeKA jA sakawA hE, jisase anya arWoM kA viswAra huA hE . banxa hone kI eka 
;pUrNa kriyA meM anya bahuwa sI gONa kriyAoM kA honA howA hE . ina viviXa honevAlI 
;iwara kriyAoM ko rUpaka banAkara ina viswqwa arWoM ko samaJA jA sakawA hE . 
;
;-- banxa hone kI kriyA ke bIca honevAlI kriyAoM ko xeKeM wo nimna kriyAez 
;sAmAnyawaH xeKI jA sakawI hEM . 
;(yahAz yaha XyAna raKanA cAhie ki kisI cIja ke pravAhamAna aswiwwva ke samApwa
;hone ko BI banxa honA kahawe hEM)
;1- banxa hone meM nikatawA spaRtawaH xeKI jA sakawI hE . jEse- kinhIM kivAda Axi 
;ke banxa hone meM sAXaka vaswuoM kA nikata meM AnA ho rahA hE . 
;(kivAdoM ke pAsa meM AnA, unake Apasa kA saMkocana BI kahalA sakawA hE . 
;saMkocana se saMkocIsvaBAva ko samaJA jA sakawA hE,saMkocI svABava kqpaNa kA howA hE) 
;2- sAXaka vaswuoM ke nikata Ane meM maXaya meM sWiwa rikwawA XIre-XIre samApwa ho
;rahI howI hE . 
;3- rikwawA ke XIre-XIre samApwa hone meM, maXya meM sWiwa rikwawA sUkRma se 
;sUkRma howI jA rahI howI hE . 
;
;-- pAsa meM honevAlA vyakwi samAna howA hE . isako hama isa prakAra soca sakawe hEM ki
;jo vixyArjana meM pAsa-pAsa hEM, veM vixyA kI xqRti se samAna hEM . isa waraha hara 
;kRewra meM socA jA sakawA hE . 
;
;-- pAsa se samAna,samAna se barAbara evaM barAbaravAloM se ekasAWa kA sambanXa jodA jA
;sakawA hE . kAraNa- barAbaravAloM kA eka sAWa rahanA . 
;
;    isa xiye gaye vivaraNa se yaha spaRta samaJA jA sakawA hE ki kisa prakAra isa
;eka `banxa hone' kI pUrNa-kriyA ke viviXArWa hue hEM .
;
;
