
;Added by Meena(19.7.11)
;When the dollar is in a free fall, even central banks can not stop it. 
(defrule free_fall01
(declare (salience 4800))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 free)
(id-cat_coarse ?id noun)
(id-root ?id2 dollar|pound|price|value|euro)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BArI_girAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp  fall01  "  ?id "  " ?id1 "  BArI_girAvata )" crlf))
)




(defrule fall0
(declare (salience 5000))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fallen )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id parAjiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fall.clp  	fall0   "  ?id "  parAjiwa )" crlf))
)

;"fallen","Adj","1.parAjiwa"
;The fallen team had to leave the stadium.
; 
;"fall guy","N","1.balI_kA_bakarA"
;He was beaten by someone else but I became the fallen guy.
;
;

;As she picked the cracked vase,it fell apart in her hands.
;jEse hI usane xarAra padZe PUlaxAna ko uTAyA vaha tukadZoM meM tUta gayA
(defrule fall1
(declare (salience 4800))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_hata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall1  "  ?id "  " ?id1 "  pICe_hata  )" crlf))
)

;The army fell back after losing the battle.
;ladZAI hArane para senA pICe hata gaI
(defrule fall2
(declare (salience 4700))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 behind)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 piCadZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall2  "  ?id "  " ?id1 "  piCadZa_jA  )" crlf))
)

;He is falling behind in his homework.
;vaha apane gqhakArya meM pICe CUta rahA hE
(defrule fall3
(declare (salience 4600))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XoKA_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall3  "  ?id "  " ?id1 "  XoKA_KA  )" crlf))
)

;He told me that he's a millionaire && i fell for it.
;usane muJe bawAyA ki vo eka karodZapawi hE Ora mEM XoKA KA gayA
(defrule fall4
(declare (salience 4500))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mugXa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall4  "  ?id "  " ?id1 "  mugXa_ho  )" crlf))
)

;She has fallen for your brother.
;vaha wumhAre BAI para mugXa hE
(defrule fall5
(declare (salience 4400))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sahamawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall5  "  ?id "  " ?id1 "  sahamawa_ho  )" crlf))
)

;She falls in with my advice.
;vaha merI salAha se sahamawa hE
(defrule fall6
(declare (salience 4300))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall6  "  ?id "  " ?id1 "  AkramaNa_kara  )" crlf))
)

;He fell on the old man && beat him.
;usane bUDZe AxamI pe AkramaNa kiyA Ora use mArane lagA
(defrule fall7
(declare (salience 4200))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JagadZA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall7  "  ?id "  " ?id1 "  JagadZA_kara  )" crlf))
)

;She fell out with her brother.
;usane apane BAI se JagadZA kiyA
(defrule fall8
(declare (salience 4100))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 apart)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall8  "  ?id "  " ?id1 "  tUta  )" crlf))
)


(defrule fall9
(declare (salience 3900))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gira_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall9  "  ?id "  " ?id1 "  gira_padZa  )" crlf))
)






(defrule fall10
(declare (salience 3300))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall10  "  ?id "  " ?id1 "  nIce_gira  )" crlf))
)



(defrule fall11
(declare (salience 2900))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 meM_Pazsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall11  "  ?id "  " ?id1 "  meM_Pazsa  )" crlf))
)


(defrule fall12
(declare (salience 2700))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 se_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall12  "  ?id "  " ?id1 "  se_gira  )" crlf))
)




(defrule fall13
(declare (salience 2300))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) over )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fall.clp 	fall13   "  ?id "  gira )" crlf))
)

;If PP is used, it eats up the vibhakti, hence changed to following_word=over
(defrule fall14
(declare (salience 2200))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 asaPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall14  "  ?id "  " ?id1 "  asaPala_ho  )" crlf))
)


(defrule fall15
(declare (salience 2000))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall15  "  ?id "  " ?id1 "  AkramaNa_kara  )" crlf))
)


;Added by Meena(12.1.11)
;Thousands of young people are facing a big fall in unemployment . (2nd parse)
(defrule fall16
(declare (salience 1800))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girAvata))
;(assert (id-wsd_root_mng ?id giranA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fall.clp      fall16   "  ?id "  girAvata )" crlf))
)



;Meaning changed by Meena(12.1.11)
;She hurt her arm in the fall and lost the use of her fingers temporarily. 
(defrule fall17
(declare (salience 0))
;(declare (salience 1800))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
;(assert (id-wsd_root_mng ?id girAvata))
(assert (id-wsd_root_mng ?id giranA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fall.clp 	fall17   "  ?id "  giranA )" crlf))
)

(defrule fall18
(declare (salience 1700))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SurU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall18  "  ?id "  " ?id1 "  SurU_kara  )" crlf))
)





(defrule fall19
(declare (salience 1300))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fall.clp 	fall19   "  ?id "  gira )" crlf))
)

;default_sense && category=verb	gira	0
;"fall","VI","1.giranA"
;The bicycle will fall if it is not kept properly.
;The temperature fell after last night's rain.
;--"2.honA"
;Holi falls in the month of March.
;--"3.lAlaca_meM_AnA"
;He fell for the gifts offered by the shop.
;--"4.padZanA"
;The Prince's eyes fell on the poor girl.
;The sunlight fell towards the west.
;I fell in bad company when I was in my teens.
;
;LEVEL 
;
;
;                `fall' sUwra (nibanXa)
;
;`fall' Sabxa ke viviXa prayoga--
;------------------------  
;
;"fall","N","1.pawana"
;               ---- < giranA
;The fall of the currupt system is certain.
;
;"fall","VI","1.giranA"
;The bicycle will fall if it is not kept properly.
;The temperature fell after last night's rain.
;--"2.honA"
;              ---- < kinhIM ke bIca padanA (honA) < padanA < giranA
;Holi falls in the month of March.
;--"3.lAlaca_meM_AnA"
;              ---- < kisI BAva viSeRa meM AnA(padanA) < padanA < giranA
;He fell for the gifts offered by the shop.
;--"4.padZanA"
;              ---- < giranA 
;The Prince's eyes fell on the poor girl.
;The sunlight fell towards the west.
;I fell in bad company when I was in my teens.
;-----------------------------------------------------
;
;sUwra : pawana[<giranA`]
;-----------
;
;     `fall' Sabxa ke upariliKiwa viviXa prayogoM meM `girane kA BAva' sAmAnya hE .
;hinxI BARA meM BI girane ke BAva kA viviXa rUpoM meM prayoga howA hE . yahAz Upara 
;xiye viBinna prayogoM ke arWa-viswAra ke viRaya meM WodA viSleRaNa AvaSyaka hogA . 
;
;-- `pawana' meM girane kA BAva spaRta hE . jaba koI (vyakwi va samAja, kuCa BI) apanI 
;avasWA-viSeRa (vEcArika va BOwika) se nIce AwA(girawA) hE wo isa waraha kA prayoga 
;howA hE . Upara se nIce girA hI jAwA hE . 
; 
;--  girane kA sAmAnyIkaraNa `padane' kA honA Ama hE . hinxI meM BI isakA prayoga 
;sAmAnya hE . xqRti kA giranA yA xqRti kA padanA . yahAz yaha socA jA sakawA hE ki jaba
;padane ke BAva kA prayoga kiyA jAwA hE wo kisI ke Upara(upariBAga) para usa kriyA ko 
;socA jAwA hE . 
;
;-- padane kA sAmAnyIkaraNa `honA' . kisI upariBAga para padanA, arWAw kisI upariBAga
;para honA . isase kahIM BI huA jAne kA BAva . isI ke prayoga- hone ke arWa meM Upara ke
;`wyOhAra viSeRa' ke hone arWa meM . hinxI meM isa waraha kA prayoga- mArca ke anwa 
;meM holI kA wyOhAra padawA hE . 
;
;--  `lAlaca meM AnA' arWAw lAlaca meM giranA hI hE . lAlaca nimna mAnA jAwA hE . kisI
;Uzce BAvaviSeRa se nIce girane kA BAva JalakawA hE .
;
;
(defrule fall20
(declare (salience 1200))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fell )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pahAdZI_ilAkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fall.clp  	fall20   "  ?id "  pahAdZI_ilAkA )" crlf))
)

;"fell","N","1.9pahAdZI_ilAkA{uwwarI_iMgalEMda_kA}"
;Lakeland fells.
;

;As she picked the cracked vase,it fell apart in her hands.
;jEse hI usane xarAra padZe PUlaxAna ko uTAyA vaha tukadZoM meM tUta gayA

;The army fell back after losing the battle.
;ladZAI hArane para senA pICe hata gaI

;He is falling behind in his homework.
;vaha apane gqhakArya meM pICe CUta rahA hE

;He told me that he's a millionaire && i fell for it.
;usane muJe bawAyA ki vo eka karodZapawi hE Ora mEM XoKA KA gayA

;She has fallen for your brother.
;vaha wumhAre BAI para mugXa hE
(defrule fall21
(declare (salience 600))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sahamawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall21  "  ?id "  " ?id1 "  sahamawa_ho  )" crlf))
)

;She falls in with my advice.
;vaha merI salAha se sahamawa hE
(defrule fall22
(declare (salience 500))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall22  "  ?id "  " ?id1 "  AkramaNa_kara  )" crlf))
)

;He fell on the old man && beat him.
;usane bUDZe AxamI pe AkramaNa kiyA Ora use mArane lagA

;usane apane BAI se JagadZA kiyA



(defrule fall23
(declare (salience -2000))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fell )
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kAta_girA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fall.clp  	fall23   "  ?id "  kAta_girA )" crlf))
)

(defrule fall24
(declare (salience -2100))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fell )
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gira))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fall.clp  	fall24   "  ?id "  gira )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  fall.clp       fall71   "  ?id "  yA )" crlf))
)

(defrule fall25
(declare (salience -2200))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fell )
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gira))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fall.clp  	fall25   "  ?id "  gira )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  fall.clp       fall25   "  ?id " yA )" crlf))
)

;"fell","V","1.kAta_girAnA"




;default_sense && category=verb	gira	0
;"fall","VI","1.giranA"
;The bicycle will fall if it is not kept properly.
;The temperature fell after last night's rain.
;--"2.honA"
;Holi falls in the month of March.
;--"3.lAlaca_meM_AnA"
;He fell for the gifts offered by the shop.
;--"4.padZanA"
;The Prince's eyes fell on the poor girl.
;The sunlight fell towards the west.
;I fell in bad company when I was in my teens.
;
;LEVEL 
;
;
;                `fall' sUwra (nibanXa)
;
;`fall' Sabxa ke viviXa prayoga--
;------------------------  
;
;"fall","N","1.pawana"
;               ---- < giranA
;The fall of the currupt system is certain.
;
;"fall","VI","1.giranA"
;The bicycle will fall if it is not kept properly.
;The temperature fell after last night's rain.
;--"2.honA"
;              ---- < kinhIM ke bIca padanA (honA) < padanA < giranA
;Holi falls in the month of March.
;--"3.lAlaca_meM_AnA"
;              ---- < kisI BAva viSeRa meM AnA(padanA) < padanA < giranA
;He fell for the gifts offered by the shop.
;--"4.padZanA"
;              ---- < giranA 
;The Prince's eyes fell on the poor girl.
;The sunlight fell towards the west.
;I fell in bad company when I was in my teens.
;-----------------------------------------------------
;
;sUwra : pawana[<giranA`]
;-----------
;
;     `fall' Sabxa ke upariliKiwa viviXa prayogoM meM `girane kA BAva' sAmAnya hE .
;hinxI BARA meM BI girane ke BAva kA viviXa rUpoM meM prayoga howA hE . yahAz Upara 
;xiye viBinna prayogoM ke arWa-viswAra ke viRaya meM WodA viSleRaNa AvaSyaka hogA . 
;
;-- `pawana' meM girane kA BAva spaRta hE . jaba koI (vyakwi va samAja, kuCa BI) apanI 
;avasWA-viSeRa (vEcArika va BOwika) se nIce AwA(girawA) hE wo isa waraha kA prayoga 
;howA hE . Upara se nIce girA hI jAwA hE . 
; 
;--  girane kA sAmAnyIkaraNa `padane' kA honA Ama hE . hinxI meM BI isakA prayoga 
;sAmAnya hE . xqRti kA giranA yA xqRti kA padanA . yahAz yaha socA jA sakawA hE ki jaba
;padane ke BAva kA prayoga kiyA jAwA hE wo kisI ke Upara(upariBAga) para usa kriyA ko 
;socA jAwA hE . 
;
;-- padane kA sAmAnyIkaraNa `honA' . kisI upariBAga para padanA, arWAw kisI upariBAga
;para honA . isase kahIM BI huA jAne kA BAva . isI ke prayoga- hone ke arWa meM Upara ke
;`wyOhAra viSeRa' ke hone arWa meM . hinxI meM isa waraha kA prayoga- mArca ke anwa 
;meM holI kA wyOhAra padawA hE . 
;
;--  `lAlaca meM AnA' arWAw lAlaca meM giranA hI hE . lAlaca nimna mAnA jAwA hE . kisI
;Uzce BAvaviSeRa se nIce girane kA BAva JalakawA hE .
;
;
