
(defrule tackle0
(declare (salience 5000))
(id-root ?id tackle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xara_pakada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tackle.clp 	tackle0   "  ?id "  Xara_pakada )" crlf))
)

;"tackle","N","1.Xara_pakada{PutabAla_yA_hAkI_ke_Kela_meM}"
;The player was brought to the ground with a tackle.
;--"2.maCalI_pakadane_kA_upakaraNa"
;It is a fishing tackle.
;--"3.BArI_vaswuo_ko_caDZAne_uwArane_kA_yaMwra"
;The tackle is ready to remove the goods from the anchored ship.
;
(defrule tackle1
(declare (salience 4900))
(id-root ?id tackle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAWa_meM_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tackle.clp 	tackle1   "  ?id "  hAWa_meM_le )" crlf))
)

;"tackle","VT","1.hAWa_meM_lenA"
;He tackles the work efficiently.
;--"2.PutabAla_lekara_xOdawe_hue_KilAdI_ko_pakadakara_roka_lenA"
;He is no good at tackling.
;
;LEVEL 
;Headword : tackle
;
;Examples --
;1. They have decided to tackle the problem on their own.
;unhoMne apane Apa hI samasyA kA mukAbalA karane kA niScaya kiyA hE.
;2. They are all trying to tackle the ball from the weakest player.
;ve saBI sabase kimajZora KilAdZI se geMxa le lene kI koSiSa kara raheM hEM.
;3. She tackled me about her bonus as I entered the office.
;OYPasa meM praveSa karawe hI usane muJe usake bonasa ke bAre meM hAWa meM liyA.
;4. Today she has taken the new tackle for fishing.
;Aja vaha maCalI pakadZane ke lie nayA kIla-kAztA le gaI hE.
;
;vyAKyA --
;uparaliKiwa vAkyoM meM "tackle" Sabxa ke Binna xiKanevAle arWoM meM vAswava meM 
;saMbaMXa hE. 
;
;vAkya 1-3 meM "tackle" kA jo arWa A rahA hE vaha hE, "JUJane" kA Ora "mukAbalA" karane
;kA.
;
;vAkya 4 meM yahI arWa saMjFA ke rUpa meM mukAbalA karane yA JUJane ke karaNa ke rUpa meM 
;prakata ho rahA hE.  
;
;aba azgrejZI ke prayoga meM "tackle" ke arWa kA sakArAwmaka BAva A rahA hE. jaba ki 
;hinxI meM A rahe "tackle" ke arWa, "JUJanA" meM nakArAwmaka BAva xiKAI xewA hE, Ora
;"mukAbalA" ke arWa meM watasWa BAva prakata howA hE. 
;aba kyoMki "tackle" Sabxa ke lie hinxI meM koI yaWAwaWya wulyAMka nahIM hE, hama isa
;arWa kA sabase najZaxIkI paryAya "mukAbalA" se "tackle" kA arWa grahaNa kareMge.
;
;"tackle" kA sUwra kuCa isa prakAra hogA .
;
;anwarnihiwa sUwra ;
;
;JUJanA - mukAbalA - mukAbalA_[karane_ke_yaMwra]
;
;sUwra : mukAbalA`
; 
;"tackle","V","mukAbalA"
;"tackle","N","mukAbalA_[karane_ke_yaMwra]"

;Added by Prachi Rathore[2-12-13]
; Today she has taken the new tackle for fishing.
;Aja vaha maCalI pakadZane ke lie nayA kIla-kAztA le gaI hE.

(defrule tackle2
(declare (salience 6000))
(id-root ?id tackle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?id1)
(id-root ?id1 fishing)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kIla-kAztA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tackle.clp 	tackle2   "  ?id "  kIla-kAztA )" crlf))
)


;Added by Prachi Rathore[2-12-13]
;1. They have decided to tackle the problem on their own.
;unhoMne apane Apa hI samasyA kA sAmanA karane kA niScaya kiyA hE.
(defrule tackle3
(declare (salience 6000))
(id-root ?id tackle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 problem)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmanA_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tackle.clp 	tackle3   "  ?id "  sAmanA_kara )" crlf))
)

;Added by Prachi Rathore[2-12-13]
;2. They are all trying to tackle the ball from the weakest player.
;ve saBI sabase kimajZora KilAdZI se geMxa le lene kI koSiSa kara raheM hEM.
(defrule tackle4
(declare (salience 6000))
(id-root ?id tackle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tackle.clp 	tackle4   "  ?id "  le )" crlf))
)


;Added by Prachi Rathore[2-12-13]
;--"3.BArI_vaswuo_ko_caDZAne_uwArane_kA_yaMwra"
;The tackle is ready to remove the goods from the anchored ship.

(defrule tackle5
(declare (salience 6000))
(id-root ?id tackle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ? ?id)
(subject-subject_samAnAXikaraNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BArI_vaswuo_ko_caDZAne_uwArane_kA_yaMwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tackle.clp 	tackle5   "  ?id "  BArI_vaswuo_ko_caDZAne_uwArane_kA_yaMwra )" crlf))
)


;Added by Prachi Rathore[2-12-13]
;The government is determined to tackle inflation. 
(defrule tackle6
(declare (salience 6000))
(id-root ?id tackle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 inflation|blaze|intruder)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAbu_me_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tackle.clp 	tackle6   "  ?id "  kAbu_me_kara )" crlf))
)

;Added by Prachi Rathore[3-12-13]



