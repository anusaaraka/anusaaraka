


;Modified by sheetal
;Added by Meena(18.6.10)
;Events of this type rarely go according to the plan . 
;Did it all go according to the plan ? 
(defrule go0
(declare (salience 5500))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-root ?wrd plan)
(or (kriyA-according_saMbanXI  ?id ?wrd)(kriyA-according_to_saMbanXI  ?id ?wrd))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  go.clp        go0   "  ?id "  ho )" crlf))
)

;I will go to bed soon. I will go to bed in an hour. (Added by Sukhada 15-09-10)
(defrule go_to_bed
(declare (salience 5000))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?wrd bed)
(kriyA-to_saMbanXI  ?id ?wrd)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) ?wrd sone_ke_liye_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* "  go.clp        go_to_bed   "  ?id"  " =(+ ?id 1)"  " ?wrd " sone_ke_liye_jA )" crlf))
)




;to_vAlA_viSeRaNa=kitchen && category=noun	bane_rahanA_yA_cale_calanA	2.59026716544583
(defrule go1
(declare (salience 5000))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id going )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bane_rahanA_yA_cale_calanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  go.clp  	go1   "  ?id "  bane_rahanA_yA_cale_calanA )" crlf))
)

;given_word=going && word_category=noun	$prasWAna)

;"going","N","1.prasWAna"
;I was sad at his going to Banglore.
;--"2.jamIna/paWa_Axi_kI_sWiwi"
;The cricket field is of rough going.
;--"3.pragawi_kI_xara"
;Becoming a tennis champion at 1.is a great going.
;
;
(defrule go2
(declare (salience 4900))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xoswI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go2  "  ?id "  " ?id1 "  xoswI_ho  )" crlf))
)

;She goes about with Jack.
;usakI jEka se xoswI hE
(defrule go3
(declare (salience 4800))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KZabara_PEla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go3  "  ?id "  " ?id1 "  KZabara_PEla  )" crlf))
)

;There is a story going about that you are leaving this job.
;yaha KZabara PEla rahI hE ki wuma yaha nOkarI CodZa rahe ho
(defrule go4
(declare (salience 4700))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mudZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go4  "  ?id "  " ?id1 "  mudZa  )" crlf))
)

;The ship went about when it came closer to the shore.
;jahAja kinAre ke pAsa Akara mudZa gayA
(defrule go5
(declare (salience 4600))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAma_karawe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go5  "  ?id "  " ?id1 "  kAma_karawe_raha  )" crlf))
)

;You must know the best way to go about the job.
;wumhe nOkarI meM sahI warIke se kAma karawe rahanA AnA cAhie
(defrule go6
(declare (salience 4500))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go6  "  ?id "  " ?id1 "  pICe_jA  )" crlf))
)

;Go after her && apologize.
;usake pICe jAo Ora mAPZI mAMgo
(defrule go7
(declare (salience 4400))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 ahead)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Suru_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go7  "  ?id "  " ?id1 "  Suru_kara  )" crlf))
)

;Can i go ahead with this work now?
;kyA mEM isa kAma ko aba Suru kara sakawA hUz?

(defrule go8
(declare (salience 1200))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 ahead)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp    go8  "  ?id "  " ?id1 "  Age_cala  )" crlf))
)




;(defrule go9
;(declare (salience 4300))
;(id-root ?id go)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 along)
;(kriyA-upasarga ?id ?id1)
;(kriyA-object ?id ?)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sahamawa_ho))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go9  "  ?id "  " ?id1 "  sahamawa_ho  )" crlf))
;)

;It's true that you are my friend but i can't go along with you on this issue.
;yaha sahI hE ki wuma mere miwra ho lekina isa muxxe para mEM wumase sahamawa nahIM hUz

;Above rule commented by sheetal and modified this one.
;It is true that you are my friend but i can't go along with you on this issue.
(defrule go10
(declare (salience 4300))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) along)
(or (kriyA-upasarga ?id =(+ ?id 1))(kriyA-along_with_saMbanXI  ?id ?id1) (kriyA-with_saMbanXI  ?id ?id1))
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) sahamawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp    go10  "  ?id "  " =(+ ?id 1) "  sahamawa_ho  )" crlf))
)





(defrule go11
(declare (salience 4200))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaya_biwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go11  "  ?id "  " ?id1 "  samaya_biwA  )" crlf))
)

;I don't like the guy you are going around with. 
;muJe vaha ladZakA pasaMxa nahIM hE jisake sAWa wuma samaya biwAwe ho
(defrule go12
(declare (salience 4100))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KZabara_PEla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go12  "  ?id "  " ?id1 "  KZabara_PEla  )" crlf))
)

;There is a story going around that you are leaving this job.
;yaha KZabara PEla rahI hE ki wuma yaha nOkarI CodZa rahe ho

(defrule go13
(declare (salience 800))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp    go13  "  ?id "  " ?id1 "  GUma  )" crlf))
)





(defrule go14
(declare (salience 4000))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go14  "  ?id "  " ?id1 "  mAra  )" crlf))
)

;She went at her brother with a stick.
;usane apane BAI ko CadZI se mArA
(defrule go15
(declare (salience 3900))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 apanI_bAwa_se_pICe_hata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go15  "  ?id "  " ?id1 "  apanI_bAwa_se_pICe_hata  )" crlf))
)

;He said he'd pay you the money but i think i'll go back on his words.
;usane kahA ki vo wumheM pEsA vApisa karegA para muJe lagawA hE ki vaha apanI bAwa se pICe hata jAegA
(defrule go16
(declare (salience 3800))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xobArA_Suru_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go16  "  ?id "  " ?id1 "  xobArA_Suru_kara  )" crlf))
)

;She has gone back her studies again.
;usane apanI paDZAI xobArA se Suru kara xI hE
(defrule go17
(declare (salience 3700))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go17  "  ?id "  " ?id1 "  pakadZa  )" crlf))
)

;He's gone down with fever.
;use buKZAra ne pakadZa liyA hE
(defrule go18
(declare (salience 3600))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go18  "  ?id "  " ?id1 "  kama_ho  )" crlf))
)

;The swelling on my leg has gone down now.
;merI tAzga kI sUjana aba kuCa kama ho gaI hE
(defrule go19
(declare (salience 3500))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go19  "  ?id "  " ?id1 "  yAxa_kara  )" crlf))
)

;Your bravery will go down in history.
;wumhArA sAhasa iwihAsa meM yAxa kiyA jAegA
(defrule go20
(declare (salience 3400))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prahAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go20  "  ?id "  " ?id1 "  prahAra_kara  )" crlf))
)

;As he opened the door the police went on him.
;jEse hI usane xaravAjZA KolA pulisa ne usapara prahAra kara xiyA
(defrule go21
(declare (salience 3300))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forth)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go21  "  ?id "  " ?id1 "  CodZa  )" crlf))
)

;The time has come to go forth this work.
;isa kAma ko CodZane kA samaya A gayA hE
(defrule go22
(declare (salience 3200))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hissA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go22  "  ?id "  " ?id1 "  hissA_le  )" crlf))
)

;I am not going in for the 100 metres race.
;mEM sO mItara xOdZa meM hissA nahIM le rahA hUz
(defrule go23
(declare (salience 3100))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pasaMxa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go23  "  ?id "  " ?id1 "  pasaMxa_ho  )" crlf))
)

;My son goes in for collecting stones.
;mere puwra ko pawWara ikatTe karanA pasaMxa hE
(defrule go24
(declare (salience 3000))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Suru_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go24  "  ?id "  " ?id1 "  Suru_ho  )" crlf))
)

;What time does class go in?
;klAsa kiwane baje SurU howI hE?
(defrule go25
(declare (salience 2900))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nApasaMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go25  "  ?id "  " ?id1 "  nApasaMxa_kara  )" crlf))
)

;I've gone off Shakespeare. 
;muJe Seksapiyara nApasaMxa hE
(defrule go26
(declare (salience 2800))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go26  "  ?id "  " ?id1 "  baja  )" crlf))
)


;Added by Meena(9.10.10)
;We camped there because it was too dark to go on . 
(defrule go028
(declare (salience 2600))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
;(subject-conjunction  5 4)
;(viSeRaNa-viSeRaka  8 7)
(to-infinitive  ?lid ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp    go028  "  ?id "  " ?id1 "  Age_baDa  )" crlf))
)

;The students ran away as soon as the bell went off.
;jEse hI GaMtI bajI vixyArWI BAga gae
(defrule go27
(declare (salience 2700))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gusse_se_bAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go27  "  ?id "  " ?id1 "  gusse_se_bAwa_kara  )" crlf))
)

;Her mother went on at her for coming late in night.
;usakI mAM ne rAwa ko xerI se Ane para usase gusse se bAwa kI
(defrule go28
(declare (salience 2500))
;(declare (salience 2600))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-word =(+ ?id 1) on )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go28  "  ?id "  " ?id1 "  ho  )" crlf))
)

;In case of 'to go overseas on myself, ', it is giving wrong result. To stop it, 'following_word=on', is added.
;What is going on here?
;yahAz kyA ho rahA hE?
(defrule go29
(declare (salience 2500))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) time )
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go29  "  ?id "  " ?id1 "  bIwa  )" crlf))
)

;Don't worry! Everything will be fine as time goes on.
;cinwA mawa karo!jEse -jEse samaya bIwegA saba TIka ho jAegA
(defrule go30
(declare (salience 2400))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAPa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go30  "  ?id "  " ?id1 "  sAPa_kara  )" crlf))
)

;I usually go over the floor with a wet cloth.
;mEM aXikawara apanA ParSa gIle kapadZe se sAPa karawI hUz
(defrule go31
(declare (salience 2300))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xoharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go31  "  ?id "  " ?id1 "  xoharA  )" crlf))
)

;You must concentrate in this class as i'll not go over this thing again.
;wumheM isa kakRA meM XyAna xenA cAhie kyoMki mEM ise xobArA nahIM xoharAUzgI
(defrule go32
(declare (salience 2200))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ikatTe_xiKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go32  "  ?id "  " ?id1 "  ikatTe_xiKa  )" crlf))
)

;This carpet && curtains go together very well.
;yaha galIcA Ora paraxe ikatTe bahuwa acCe xiKawe hEM
(defrule go33
(declare (salience 2100))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 under)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 barbAxa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go33  "  ?id "  " ?id1 "  barbAxa_ho  )" crlf))
)

;Thousands of small businesses went under during the recession.
;hajZAroM Cote -Cote vyApAra apagamana ke xOrAna barbAxa ho gae
(defrule go34
(declare (salience 2000))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go34  "  ?id "  " ?id1 "  baDZa  )" crlf))
)

;The price of bread is going up from tomorrow.
;dabala rotI kI kImawa kala se baDZa rahI hE
(defrule go35
(declare (salience 1900))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go35  "  ?id "  " ?id1 "  bana  )" crlf))
)

;There are many parks going up all over the city.
;Sahara meM bahuwa se mExAna banane jA rahe hEM




(defrule go36
(declare (salience 1300))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 against)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prawikUla_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go36  "  ?id "  " ?id1 "  prawikUla_ho  )" crlf))
)




;Modified and meaning changed by Meena(27.10.10)
;I heard from him twice since he went away.
(defrule go37
(declare (salience 600))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(or(kriyA-upasarga ?id ?id1)(kriyA-away_saMbanXI  ?id ?saM))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go37  "  ?id "  " ?id1 "  jA  )" crlf))
)


(defrule go38
(declare (salience 400))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cale_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go38  "  ?id "  " ?id1 "  cale_jA  )" crlf))
)

(defrule go39
(declare (salience 200))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 light)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 buJa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go39  "  ?id "  " ?id1 "  buJa_jA  )" crlf))
)

(defrule go40
(declare (salience 100))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go40  "  ?id "  " ?id1 "  bAhara_jA  )" crlf))
)

(defrule go41
(declare (salience 0))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go41  "  ?id "  " ?id1 "  baDZa  )" crlf))
)


(defrule go42
(declare (salience -200))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 without)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ke_binA_kAma_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go42  "  ?id "  " ?id1 "  ke_binA_kAma_calA  )" crlf))
)


(defrule go43
(declare (salience -400))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to )
(id-word =(+ ?id 2) sleep)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id so_jAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  go.clp 	go43   "  ?id "  so_jAnA )" crlf))
)


(defrule go44
(declare (salience -700))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_kI_ora_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go44  "  ?id "  " ?id1 "  nIce_kI_ora_jA  )" crlf))
)


; Examples in favour of go_into are required
; Examples against: He proposes to go into business.
;PP_null_into && category=verb	aMxara_jA	100
;particle_into_- && category=verb	aMxara_jA	100
;PP_null_into && category=verb	jArI_raha	100
;particle_into_- && category=verb	jArI_raha	100
;PP_null_on && category=verb	jArI_raha	100
(defrule go45
(declare (salience -900))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jArI_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " go.clp	go45  "  ?id "  " ?id1 "  jArI_raha  )" crlf))
)

(defrule go46
(declare (salience -1000))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 round)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakkara_kAta))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  go.clp 	go46   "  ?id "  cakkara_kAta )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  go.clp        go46   "  ?id " kI )"  crlf)
)
)

;particle_on_- && category=verb	bane_raha	19.3167050804527
;PP_null_on && category=verb	bane_raha	19.3167050804527
;particle_by_- && category=verb	jA	14.3624752283461
;PP_null_by && category=verb	jA	14.3624752283461
;to_vAlA_viSeRaNa=kitchen && category=verb	uwara	7.45336032984796
(defrule go47
(declare (salience -1100))
(id-root ?id go)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  go.clp 	go47  "  ?id "  jA )" crlf))
)

;default_sense && category=verb	jA	0
;"go","V","1.jAnA"
;I go to school everyday.
;--"2.raKA_jAnA"
;These clothes go into that suitcase.
;--"3.samAnA[<jAnA]"
;This key will not go into that lock.
;--"4.calanA"
;How did the meeting go?
;--"5.ho_jAnA{sWiwi}"
;Have you gone mad?
;--"6.AvAjZa_honA[karanA]"
;The bell has gone for this period.
;--"7.cale_jAnA"
;The P.M. is already  gone.
;
;
