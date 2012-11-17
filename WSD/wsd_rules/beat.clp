;The rule beat0 can be removed as "beat off/ sb off" is a phrasal verb.(Meena:20.12.08) 
;She beat off her attacker by hitting him with her handbag.
;This rule need to be change. (suggested by Chaitanya Sir)
(defrule beat0
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bacAva_meM_saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " beat.clp	beat0  "  ?id "  " ?id1 "  bacAva_meM_saPala_ho  )" crlf))
)
;The beggar beat off the children who attacked him.
;BiKArI baccoM ke prahAra se (apane bacAva meM)saPala ho gayA




;The rule beat1 can be removed as "beat sb up" is a phrasal verb.(Meena:20.12.08) 
(defrule beat1
(declare (salience 4900))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " beat.clp	beat1  "  ?id "  " ?id1 "  mAra  )" crlf))
)

;pulisa aparAXI ko mArawI hE







; The rule beat2 can be removed as beat "sth back / sb back" is a phrasal verb.(Meena:20.12.08) 
(defrule beat2
(declare (salience 4800))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_AGAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " beat.clp	beat2  "  ?id "  " ?id1 "  pICe_AGAwa_kara  )" crlf))
)





;Added by Meena(1.4.10)
;Ram is beating a boy.
(defrule beat3
(declare (salience 4700))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(kriyA-object ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp      beat3   "  ?id "  pIta )" crlf))
)






;Modified  by Meena(1.4.10)
;Added  by Meena(30.3.10)
;I have never yet been beaten , said he . 
;Our team was easily beaten in the competition . 
(defrule beat4
(declare (salience 4000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp      beat4   "  ?id "  harA )" crlf))
)





(defrule beat5
(declare (salience 4600))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word ?id1 heart)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xadakana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat5   "  ?id "  Xadakana )" crlf))
)




(defrule beat6
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 heart)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xadaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat6   "  ?id "  Xadaka )" crlf))
)




;Hailstorms beat against the windows. 
(defrule beat7
(declare (salience 5000))
(id-root ?id beat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word =(+ ?id 1) against)
;(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id takarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beat.clp 	beat7   "  ?id "  takarA )" crlf))
)

;The rules beat3, beat4,beat5 and beat6 ,beat7 were modified by Meena on 20.12.08.

                                                                                             
;default_sense && category=verb	harA	0
;"beat","V","1.harAnA"
;Agassi beat Becker in a tennis match.
;--"2.vAra_karanA"
;Thugs beat him up when he walking down the street late at night.
;--"3.KataKatAnA"
;He kept on beating on the door but no one opened it.
;--"4.XadZakanA"
;Her heart was beating fast.
;--"5.takarAnA"
;Hailstorms beat against the windows. 
;--"6.wadZapAnA"
;The sun was beating down on us
;--"7.PeMtanA"
;I beat the egg whites to make omelette.
;--"8.pItanA"
;She beat her breast out of emotion.
;
;LEVEL 
;
;
;"beat" 
;
;"beat","N","1.XadZakana"
;He could feel the beat of her heart.
;vaha usakI XadZakane mahasUsa kara sakawA WA.
;               <---XadZakana kI wAla <---wAla
;--"2.wAla"
;He heard the beat of a drum.
;usane Dolaka kI wAla sunI.
;
;"beat","V","1.harAnA"
;Agassi beat Becker in a tennis match.
;agAsI ne bekara ko eka tenisa mEca meM harA xiyA  <---harAnA<---- harA kara mAranA <--mAranA
;
;--"2.vAra_karanA"
;Thugs beat him up when he was walking down the street late at night.
;jaba xera rAwa vaha akele sadZaka para jA rahA WA wo TagoM ne usa para vAra kiyA 
;<----vAra_karanA <---mAranA
;
;--"3.KataKatAnA"
;He kept on beating on the door but no one opened it.
;vaha xaravAjZe ko KataKatAwA rahA para kisI ne xaravAjZA nahIM KolA.
;
;--"4.XadZakanA"
;Her heart was beating fast.
;usa xila bahuwa jZora se XadZaka rahA WA.
;
;--"5.takarAnA"
;Hailstorms beat against the windows.
;ole KidZakI se takarA rahe We.
;
;--"6.Ahawa_karanA"
;The sun was beating down on us.
;sUraja hameM Ahawa_kara rahA hE(apanI garamI se).
;
;--"7.PeMtanA"
;I beat the egg whites to make omelette.
;mEM OYmaleta banAne ke liye aMde ke saPexa hisse ko PeMtawI hUz.
;
;--"8.pItanA"
;She beat her breast out of emotion.
;vaha BAvukawA meM apanI CAwI pIta rahI WI.
;
;--"9.PadZaPadZanA"
;The injured bird started to beat its wings soon enough.
;cota KAyI cidZiyA jalxI hI apane paMKa PadZaPadZAne lagI.
;
;------------------------------------------------------------------
;
;sUwra : mAra`[PeMtanA]
;------------
;
;vyAKyA :-
;
;  upariliKiwa koSasWa vAkyoM ke AXAra para arWa-viswAra ke boXaka arWa-saMGaTaka waWya--
;-- saBI vAkyoM meM mAra (mArane)kA arWa sAmAnya hE . 
;-- mAra Sabxa se hI anya sanxarBagawa SabxoM ko samaJA jA sakawA hE . 
;-- isa Sabxa kA arWa-viswAra isa prakAra samaJa sakawe hEM-
;                mAra`{0}
;                 |
;     -------------------------------------------------------- 
;     |          |              |         |          |       |
;    pItanA      KataKatakAnA      XadakanA     wadapAnA     takarAnA   wAla
;     |
;  --------------
;  |            |
;vAra_karanA     PeMtanA
;  |
;harAnA        
; 
;-- sampUrNa arWa-viswAra isI waraha hinxI meM BI howA hE . eka PeMtanA ko alaga se 
;samaJA jA sakawA hE . 
;-- pItane ke kqwya meM bAra-bAra eka kArya ko karane kA sanxarBa xeKA yA samaJA 
;jAwA hE (kisI eka sAXana viSeRa xvArA). PeMtane meM BI bAra-bAra GumAnA yA upara
;nIce karane (kisI eka sAXana viSeRa xvArA)ke sanxarBa se arWa-sAmya samaJA 
;jA sakawA hE . 
;-- anya arWoM ko sAmAnyawaH mAranA kriyA-viSeRa ke rUpa meM xeKa va samaJa sakawe hE .  
;mAra kriyA ke xvArA iwara prasaMgoM kA ulleKa anya BARAoM meM Ama hE . 
;
