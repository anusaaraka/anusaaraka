
(defrule follow0
(declare (salience 5000))
(id-root ?id follow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id following )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aglA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  follow.clp  	follow0   "  ?id "  aglA )" crlf))
)

(defrule follow1
(declare (salience 4900))
(id-root ?id follow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id following )
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id hone_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  follow.clp  	follow1   "  ?id "  hone_para )" crlf))
)

;"following","Prep","1.hone_para"
;There was a major uprising following his arrest.
;
;
(defrule follow2
(declare (salience 4800))
(id-root ?id follow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Ora_aXika_jAnakArI_prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " follow.clp	follow2  "  ?id "  " ?id1 "  Ora_aXika_jAnakArI_prApwa_kara  )" crlf))
)

;I heard the news about him,and decided to follow it up.
;mEne usake bAre meM KZabara sunI wo Ora aXika jAnakArI prApwa karane kA niScaya kiyA
(defrule follow3
(declare (salience 4700))
(id-root ?id follow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-through_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aMwa_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " follow.clp	follow3  "  ?id "  " ?id1 "  aMwa_waka  )" crlf))
)

(defrule follow4
(declare (salience 4600))
(id-root ?id follow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aMwa_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " follow.clp	follow4  "  ?id "  " ?id1 "  aMwa_waka  )" crlf))
)

(defrule follow5
(declare (salience 4500))
(id-root ?id follow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAnakArI_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " follow.clp	follow5  "  ?id "  " ?id1 "  jAnakArI_le  )" crlf))
)

(defrule follow6
(declare (salience 4400))
(id-root ?id follow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAnakArI_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " follow.clp	follow6  "  ?id "  " ?id1 "  jAnakArI_le  )" crlf))
)

(defrule follow7
(declare (salience 4300))
(id-root ?id follow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAnakArI_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " follow.clp	follow7  "  ?id "  " ?id1 "  jAnakArI_le  )" crlf))
)

(defrule follow8
(declare (salience 4200))
(id-root ?id follow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAnakArI_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " follow.clp	follow8  "  ?id "  " ?id1 "  jAnakArI_le  )" crlf))
)

(defrule follow9
(declare (salience 4100))
(id-root ?id follow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 i)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anusaraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  follow.clp 	follow9   "  ?id "  anusaraNa_kara )" crlf))
)

;inf_clause_-_- && category=verb	ke_bAxa_ho	3.44468249360189
(defrule follow10
(declare (salience 4000))
(id-root ?id follow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anusaraNa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  follow.clp 	follow10   "  ?id "  anusaraNa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  follow.clp    follow10   "  ?id "  kA )" crlf)
)
)

; Refer Sabdasutra
;default_sense && category=verb	ke_bAx_ho	0
;default_sense && category=verb	anusaraNa karanA/anukaraNa kara	0
;"follow","V","1.anusaraNa karanA/anukaraNa karanA"
;One should follow the precedents set by the peers.
;She follows the same way of life as her parents.
;--"2.pICe_jAnA"
;To reach the city you have to follow markers on this road. 
;Before entering the city, the road follows along the sea.
;--"3.pICA karanA"
;He is so infatuated that he follows her everywhere.
;--"4.AjFA mAnanA"
;In the office you should follow what the boss says.
;--"5.anugamana karanA"
;She is following the medical profession.
;--"6.samaJanA"
;You should try to follow the instructions of the teacher.
;He tried his best to follow the instructions, but failed. 
;Do try to follow how I am playing the instrument.
;--"7.XyAna se sunanA"
;He sat following every word of the leader's speech.
;--"8.varNana karanA"
;The story of this film follows the life of the saint.
;--"9.Gatiwa honA"
;A dispute between us is likely to follow due to the false propaganda created by him.
;--"10.arWa nikalanA"
;If rains are good it does not automatically follow that the crop will be better than previous years.
;
;
;LEVEL 
;
;
;Headword : follow
;  
;Examples --
; 
;`follow' Sabxa ke viviXa prayoga-- 
;
;"follow","V","1.anusaraNa karanA/anukaraNa karanA"
;             (anukaraNa meM kriyA kA anusaraNa)
;One should follow the precedents set by the peers.
;She follows the same way of life as her parents.
;--"2.AjFA mAnanA"
;             (kisI ke nirxeSa Axi kA AcaraNa xvArA anusaraNa)
;In the office you should follow what the boss says.
;--"3.samaJanA"
;             (boxXavya kA buxXi va vicAroM Axi xvArA anusaraNa)
;You should try to follow the instructions of the teacher.
;He tried his best to follow the instructions, but failed.
;Do try to follow how I am playing the instrument.
;--"4.XyAna se sunanA"
;          (SabxoM va vyAKyAna Axi kA SravaNinxriya evaM ekAgrawA xvArA anusaraNa)
;He sat following every word of the leader's speech.
;--"5.."varNana karanA"
;         (varNanIya viRaya kA SabxoM Axi xvArA anusaraNa)
;The story of this film follows the life of the saint.
;--"6.Gatiwa honA"
;          (kriyAoM kA anusaraNarUpa AvaSyaka pariNAma)
;A dispute between us is likely to follow due to the false propaganda created by him.
;--"7."arWa nikalanA"
;          (anusariwawA kA viSleRaNarUpa pariNAma)
;If rains are good it does not automatically follow that the crop will be better t
;----------------------------------------------------------------------------
;
;sUwra : arWa_nikalAnA`[<anusaraNa_karanA`]
;-------------------------
;
;    `follow' Sabxa ke uparinirxiRta viBinna prayogoM meM anusaraNa karane kA sAmAnya
;arWa prawIwa howA hE . ye saBI anusaraNa karane kI kriyA ke arWa-viswAra ke rUpa meM 
;viSleRiwa kiye jA sakawe hEM . tippaNiyoM se yaha spaRta hE . vivaraNa nimna hE--  
;
;-- anukaraNa karanA . anukaraNa kisI kI kriyA kA anusaraNa hE .
;
;-- AjFA mAnanA . kisI kI bAwoM yA nirxeSa Axi kA anusaraNa AcaraNa Axi ke 
;xvArA kiyA jAnA AjFA mAnanA socA jAwA hE .  
;
;-- samaJanA . samaJane se pahale samaJa meM AnevAlI bAwoM kA hamAre vicAroM(buxXi Axi) 
;xvArA anusaraNa kiyA jAwA hE . 
;
;-- XyAna se sunanA . isa kriyA meM ekAgrawA va SravaNenxriya xvArA SabxoM
;(BARaNoM Axi) kA anusaraNa kiyA jAwA hE . 
;
;-- varNana karanA . isa kriyA meM varNanIya viRaya kA SabxoM Axi xvArA anusaraNa kiyA 
;jAwA hE . 
;
;-- Gatiwa honA . kAryoM Axi ke pariNAmarUpa ko Gatiwa hone ke rUpa meM xeKA jA 
;sakawA hE . yaha kAryoM Axi ke anusaraNarUpa pariNAmavAlI AvaSyaka kriyA hE . 
;
;-- arWa nikalanA . anusariwawA ke viSleRaNa se arWa kA nikalanA howA hE .  
;
;
