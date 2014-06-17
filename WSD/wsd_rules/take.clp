

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

;Meaning modified by Roja(18-09-10) for this sentence.Take off the football from the table. 
;$$$ Meaning changed : 'le_jA' as 'hatA' by Jan 2014 workshop team (10-01-14) under Sukhada's guidance. 
;Ex. It would be much better to take off the football from the Olympic Games.
(defrule take4
(declare (salience 4400))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hatA)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take4  "  ?id "  " ?id1 "  hatA  )" crlf))
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

;@@@ Added by Aditya and Hardik(21-06-2013),IIT(BHU) batch 2012-2017.
;You should take care of your mother.
(defrule take17
(declare (salience 2500))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 care)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KyAla_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take17  "  ?id "  " ?id1 "  KyAla_raKa  )" crlf))
)

;@@@ Added by Shirisha Manju, Suggested by Chaitanya Sir (05-11-13)
;When electrified rods are brought near light objects, a similar effect takes place.  (NECRT-physics)
;jaba kisI vixyunmaya Cada ko halakI vaswuoM ke nikata lAwe hEM wo yahI praBAva howA hE.
(defrule take18
(declare (salience 2500))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-root ?obj place)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?obj ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp  take18  "  ?id "  " ?obj "  ho  )" crlf))
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

;@@@ Added by Prachi Rathore[03-12-13]
;However, with the[ pre-solar] cloud, another factor had to be[ taken into] consideration.[gyannidhi]
;लेकिन सौरमंडल की रचना से पहले के बादल के बारे में एक अन्य बात को भी ध्यान में रखना होगा।
(defrule take19
(declare (salience 2700))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id2)
(id-root ?id2 consideration)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp      take19   "  ?id "  raKa)" crlf)
))

;;@@@   ---Added by Prachi Rathore
;Then Grandpa took the children to an apple orchard.[gyannidhi]
;तब दादाजी बच्चों को  सेब फलोद्यान को ले गये . 
(defrule take20
(declare (salience 2700))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp      take20   "  ?id "  le_jA)" crlf)
))


;;@@@   ---Added by Prachi Rathore
;In the afternoon Mr. Barua took Rajvir on a tour of the tea-garden. [gyannidhi]
;दोपहर के बाद के समय को श्रीमान बरुअ चाय-बागान की यात्रा पर राजवीर को ले गये .  
(defrule take33
(declare (salience 2700))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?id1)
(id-root ?id1 tour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp      take33   "  ?id "  le_jA)" crlf)
))

;;@@@   ---Added by Prachi Rathore
;The earth has to be removed [from] the tunnel and[ taken] elsewhere.[gyannidhi]
;सुरंग से मिट्टी निकाली गई होगी और दूसरी जगह ले जाई गई होगी।
(defrule take21
(declare (salience 2700))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?)
(conjunction-components  ? ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp      take21   "  ?id "  le_jA)" crlf)
))

;@@@ Added by Prachi Rathore
;Take your jacket off.[cambridge]
;आपका जैकेट उतार दीजिए .
(defrule take22
(declare (salience 2600))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-word ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwAra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take22 "  ?id "  " ?id1 "  uwAra_xe  )" crlf))
)

;@@@ Added by Prachi Rathore[31-12-13]
;During the Dussehra festival he participated in the Ram Lila , taking up the role of some character or the other .[bade ghar ki beti]
(defrule take23
(declare (salience 4500))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 role)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take23  "  ?id "  " ?id1 "  BAga_le  )" crlf))
)

;@@@ Added by Prachi Rathore[8-1-14]
;She's completely taken up with preparing for her exams. 
(defrule take24
(declare (salience 4500))
(id-root ?id take)
(id-word ?id taken)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyaswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take24  "  ?id "  " ?id1 " vyaswa )" crlf))
)

;@@@ Added by Prachi Rathore[8-1-14]
;She took up the story where Tim had left off. [oald]
(defrule take25
(declare (salience 4500))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 story)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jArI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take25  "  ?id "  " ?id1 " jArI_raKa )" crlf))
)

;@@@ Added by Prachi Rathore[8-1-14]
;Cooking gas takes up too much time. [siksharthikosh]
;Her time is fully taken up with writing. [oald]
(defrule take26
(declare (salience 4600))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(or(kriyA-karma  ?id ?id2)(kriyA-object  ?id ?id2))
(id-root ?id2 time)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take26  "  ?id "  " ?id1 " le )" crlf))
)

;@@@ Added by Prachi Rathore[8-1-14]
;They've taken up golf. [oald]
(defrule take27
(declare (salience 4500))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 golf|oboe|profession)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 apanAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take27  "  ?id "  " ?id1 " apanAyA )" crlf))
)

;@@@ Added by Prachi Rathore[8-1-14]
;We were all very taken with his girlfriend. [oald]
(defrule take28
(declare (salience 4000))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkarRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp      take28   "  ?id "  AkarRiwa)" crlf))
)

;@@@ Added by Prachi Rathore[8-1-14]
;I'd like to take you up on what you said earlier. [oald]
;I must take you up on that point.[oald]
(defrule take29
(declare (salience 4500))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(or(kriyA-upasarga ?id ?id1)(kriyA-kriyA_viSeRaNa  ?id ?id1))
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (kriyA_id-object_viBakwi ?id se))
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sahamawa_nahIM_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take29  "  ?id "  " ?id1 " sahamawa_nahIM_ho )" crlf))
)

;@@@ Added by Prachi Rathore[9-1-14]
;We'll take the matter forward at our next meeting.  [oald]
(defrule take31
(declare (salience 4500))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-cat_coarse ?id1 adverb|preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp      take31   "  ?id "  le_jA)" crlf)
))

;@@@ Added by Prachi Rathore[9-1-14]
;He took up his position by the door. [oald]
(defrule take32
(declare (salience 4500))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(viSeRya-RaRTI_viSeRaNa  ?id2 ?)
(id-root ?id2 position)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take32  "  ?id "  " ?id1 " le )" crlf))
)


;@@@ Added by Prachi Rathore[17-1-14]
;We are taking steps to correct the situation. 
;हम हालत ठीक करने के लिये कदम उठा रहे हैं . 
(defrule take34
(declare (salience 4500))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-root ?id1 correct)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp      take34   "  ?id " uTA )" crlf))
)

;@@@ Added by Prachi Rathore[17-1-14]
;The baby took her first steps today.
;शिशु ने आज उसके प्रथम कदम लिए . 
(defrule take35
(declare (salience 4000))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 step)
(kriyA-subject  ?id ?id2)
(id-root ?id2 baby)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp      take35   "  ?id " le )" crlf))
)

;@@@ Added by Prachi Rathore[24-1-14]
;Please flush the drain after you have taken bath. 
;स्नान कर चुकने के बाद आप  कृपया नाली बहा दीजिए . 
(defrule take36
(declare (salience 4000))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 bath)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 snAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp  take36  "  ?id "  " ?id1 " snAna_kara )" crlf))
)

;@@@ Added by Prachi Rathore[6-2-14]
;While taking this momentous step the Government of India did not make any arrangement to enable the Government of Bengal to meet the financial liability in respect of the University.[gyan-nidhi]
;इस महत्त्वपूर्ण कदम को उठाते हुए भारत सरकार ने विश्वविद्यालय की वित्तीय ज़िम्मेदारी को पूरा करने में बंगाल सरकार की सहायता करने की कोई व्यवस्था नहीं की।
(defrule take37
(declare (salience 3900))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 step)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  take.clp      take37   "  ?id " uTA )" crlf))
)

;@@@ Added by Prachi Rathore[10-2-14]
;The plane took off at 8.30 a.m. [cambridge]
;विमान ने सुबह 8.30 पर उडान भरी . 
(defrule take38
(declare (salience 4500))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id2)
(id-root ?id2 plane)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 udAna_Bara)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take38  "  ?id "  " ?id1 "  udAna_Bara )" crlf))
)


;@@@ Added by Prachi Rathore[10-2-14]
;He took off two weeks in September. [cambridge]
;उसने सितम्बर में दो सप्ताह की छुट्टी ली . 
(defrule take39
(declare (salience 4500))
(id-root ?id take)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "time.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CuttI_le)) 
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " take.clp	take39  "  ?id "  " ?id1 "  CuttI_le )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  take.clp	take39   "  ?id " kA )" crlf))
)

