

(defrule take1
(declare (salience 4900))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jEsA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take1  "  ?id "  " ?id1 "  jEsA_ho  )" crlf))
)

(defrule take2
(declare (salience 4800))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 liKa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take2  "  ?id "  " ?id1 "  liKa_xe  )" crlf))
)


(defrule take3
(declare (salience 4600))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 galawI_samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take3  "  ?id "  " ?id1 "  galawI_samaJa  )" crlf))
)


(defrule take4
(declare (salience 4400))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 le_jA)) ;meaning modified by Roja(18-09-10) for this sentence.Take off the football from the table. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take4  "  ?id "  " ?id1 "  le_jA  )" crlf))
)


(defrule take5
(declare (salience 4200))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take5  "  ?id "  " ?id1 "  uTA  )" crlf))
)



(defrule take6
(declare (salience 4000))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) us|him|them|her|me|you)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp 	take6   "  ?id "  le_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  take.clp      take6   "  ?id " ko )" crlf)
)
)

;The police took him to the railway station.


(defrule take7
(declare (salience 3900))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 aback)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 swaMBiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take7  "  ?id "  " ?id1 "  swaMBiwa_ho  )" crlf))
)

;They were taken aback by what they saw inside the house.


(defrule take8
(declare (salience 3800))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take8  "  ?id "  " ?id1 "  le_jA  )" crlf))
)


(defrule take9
(declare (salience 3700))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take9  "  ?id "  " ?id1 "  bAhara_nikAla  )" crlf))
)


(defrule take10
(declare (salience 3500))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 look)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp 	take10   "  ?id "  dAla )" crlf))
)


(defrule take11
(declare (salience 3400))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 action)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp 	take11   "  ?id "  kara )" crlf)))



(defrule take12
(declare (salience 3300))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 photograph)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KiMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp 	take12   "  ?id "  KiMca )" crlf))
)




(defrule take_any_chance012
(declare (salience 3300))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) a|any) 
(id-root ?id2 chance)
(kriyA-object ?id ?id2)
=>
(retract ?mng) 
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1)  ?id2  KawarA_mola_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp  take012  "  ?id "  " (+ ?id 1) " "?id2"   KawarA_mola_le  )" crlf))
)


(defrule take13
(declare (salience 3200))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 it)
(kriyA-subject ?id ?id1)
(id-word ?id2 me|you|him|her|us|them)
(kriyA-object ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp 	take13   "  ?id "  laga )" crlf)))




;Added by Meena(4.9.09)
;He took all her letters into the yard and put a match to them .
(defrule take14
(declare (salience 2700))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id2)
;(kriyA-object ?id ?id1)
;(kriyA-subject ?id ?id3)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp      take14   "  ?id "  le_jA )" crlf)
))





;Added by Meena(12.4.11)
;How many years did it take to do it? 
(defrule take15
(declare (salience 2600))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 it)     ;Meena(14.4.11)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp      take15   "  ?id "  le )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  take.clp      take15   "  ?id " ne )" crlf))
)



;Salience reduced by Meena(12.4.11)
(defrule take16
(declare (salience 0))
;(declare (salience 2600))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp      take16   "  ?id "  le )" crlf))
)



;default_sense && category=verb	le	0
;"take","VI","1.lenA"
;He took the book from his friend.
;--"2.giraPwAra_karanA"
;Aurangazeb took his men && put them in prison.
;--"3.svIkAra_kara_lenA"
;I will take up the job.
;--"4.samAhiwa_karanA"
;The can takes 4 litres of water.
;
;
;LEVEL 
;Headword : take
;
;Examples --
;
;1. Don't forget to take your tiffin.
;apanA tiPina lenA mawa BUla jAnA.
;2. Her hardwork && talent will take her to the top.
;usakI mehanawa Ora usake guNa use Upara waka le jAezge.
;3. Take the book from the last rack.
;anwima rEka se kiwAba lo.
;4. Did someone take my umbrella by mistake?
;kyA BUla se kisI ne merI CawarI lI hE?
;5. Most machines take their names from their inventors.
;jyAxAwara maSIne unake AviRkArakoM para se apanA nAma lewI hEM.
;6. Take seven from ten && what will you be left with ?
;xasa meM se sAwa le lo wo wumhAre pAsa kyA bacegA?
;7. Their daughter took the first prize in the race.
;xOdZa meM unakI puwrI ne praWama puraskAra liyA.
;8. I'll take the job if it pays well.
;mEM lUzgA yaha kAma yaxi muJe TIka xAma milegA.
;9. This bus cannot take more than fifty passengers.
;yaha basa pacAsa yAwrIoM se aXika nahIM le sakawA.
;10. Will you be able to take the weight of the sacks.
;kyA wuma borIoM kA BAra le pAoge?
;11. He cannot take criticism easily.
;vaha AsAnI se CixrAnveRaNa nahIM le sakawA hE.
;12. If this goes wrong, who takes the blame ?
;yaxi yaha galawa howA hE wo xoRa kOna lewA hE? 
;13. She takes her finals next summer.
;agalI grIRma meM vaha apanI samApaka parikRA lenevAlI hE.
;14. I prefer to take the other route.
;mEM anya mArga lenA pasaMxa karawI hUz.
;15. He took the most convenient seat.
;usane sabase suviXAjanaka Asana liyA.
;16. Lets take a break from this monotony.
;isa ekaraswA se avakAsa le. 
;17. Does he take you for a fool?
;kyA vaha wumhe mUrKa samaJawA hE ?
;18. The baby is too small to take solid food.
;yaha baccA GanIBUwa KAnA KAne ke lie bahuwa CotA hE.
;19. It takes three hours from my home to yours.
;mere Gara se wumhAre Gara ke lie wIna GaMte lagawe hEM.
;20. It takes a lot of courage to be a mountaineer.
;parvawArohI banane ke lie bahuwa xilerI cAhie.
;
;vyAKyA --
;
;uparaliKiwa vAkyoM meM vAkya 1 se vAkya 16 waka "take" Sabxa ke arWa "lenA" se saMbaMXiwa howe hE.  
;vAkya 17 se 20 meM "take" ke alaga alaga arWa Awe hEM. "take" ke ye Binna arWa
;lene kI kriyA kisa saMxarBa meM AwI hE, usa para nirXAriwa hE. 
;jEse ki vAkya 17 kA arWanirUpaNa isa prakAra ho sakawA hE - "kyA vaha wumhe mUrKa mAna lewA[mAnawA] hE?"
;vAkya 18 kA arWa nirUpaNa isa prakAra hogA : "yaha baccA GanIBUwa KAnA lene ke lie bahuwa CotA hE."
;vAkya 19 kA arWa nirUpaNa BI kuCa isI waraha se kiyA jA sakawA hE. -
;"mere Gara se wumhAre Gara ke lie rAswA wIna GaMte lewA hE."
;Ora vAkya 20 kA BI Ese hI arWanirUpaNa ho sakawA hE. - 
;"parvawArohI bananA bahuwa xilerI lewA hE ."
;
;wo aba hama "take"  kA sUwra isa prakAra xe sakawe hEM -
;
;sUwra : lenA[>mAna_lenA]
; 
