
(defrule lay0
(declare (salience 5000))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 aside)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bacA_kara_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay0  "  ?id "  " ?id1 "  bacA_kara_raKa  )" crlf))
)

;I'm trying to lay by some money for my daughter's marriage.
;mEM apanI puwrI ke vivAha ke lie kuCa pEsA bacA kara raKane kI koSiSa kara rahI hUz
(defrule lay1
(declare (salience 4900))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bacA_kara_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay1  "  ?id "  " ?id1 "  bacA_kara_raKa  )" crlf))
)

;I'm trying to lay by some money for my daughter's marriage.
;mEM apanI puwrI ke vivAha ke lie kuCa pEsA bacA kara raKane kI koSiSa kara rahI hUz
(defrule lay2
(declare (salience 4800))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay2  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;They laid down their arms after losing the battle.
;ladZAI hArane ke bAxa unhone apane haWiyAra CodZa xie
(defrule lay3
(declare (salience 4700))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay3  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;They laid down their arms after losing the battle.
;ladZAI hArane ke bAxa unhone apane haWiyAra CodZa xie
(defrule lay4
(declare (salience 4600))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nirxeSa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay4  "  ?id "  " ?id1 "  nirxeSa_xe  )" crlf))
)

;The correct procedure has been laid down by the manager.
;sahI prakriyA kA nirxeSa prabaMXaka xvArA xiyA gayA hE
(defrule lay5
(declare (salience 4500))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jamA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay5  "  ?id "  " ?id1 "  jamA_kara  )" crlf))
)

;He was starting to lay in clothes for the winter.
;usane sarxiyoM ke lie kapadZe ikatTe karane SurU kara xie We
(defrule lay6
(declare (salience 4400))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 burI_waraha_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay6  "  ?id "  " ?id1 "  burI_waraha_mAra  )" crlf))
)

;The policeman laid into the old man with a clout.
;pulisavAle ne bUDZe AxamI ko GUzse se burI waraha mArA
(defrule lay7
(declare (salience 4300))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay7  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;I said them to lay off her but they refused .
;mEne unheM use CodZa xene ko kahA lekina unhone manA kara xiyA
(defrule lay8
(declare (salience 4200))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay8  "  ?id "  " ?id1 "  roka_xe  )" crlf))
)

;The doctor advised him to lay off excessive drinking(alcohal)
;dAktara ne use aXika pIne(SarAba)ko roka xene kI salAha xI
(defrule lay9
(declare (salience 4100))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nilaMbiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay9  "  ?id "  " ?id1 "  nilaMbiwa_kara  )" crlf))
)

;She was laid off two months ago && she hasn't had any work since then.
;use xo mahIne pahale nilaMbiwa kiyA gayA WA Ora waBI se usake pAsa koI kAma nahIM hE
(defrule lay10
(declare (salience 4000))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 muhEyA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay10  "  ?id "  " ?id1 "  muhEyA_kara  )" crlf))
)

;Government has laid on one day food for draught effected people.
;sarakAra ne sUKA-graswa logoM ke lie eka xina kA Bojana muhEyA kiyA
(defrule lay11
(declare (salience 3900))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Karca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay11  "  ?id "  " ?id1 "  Karca_kara  )" crlf))
)

;They laid out so much money on their son's birthday.
;unhone apane puwra ke janmaxina para bahuwa sA pEsA Karca kiyA
(defrule lay12
(declare (salience 3800))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nakSA_wEyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay12  "  ?id "  " ?id1 "  nakSA_wEyAra_kara  )" crlf))
)

;He is the architect who has laid out my house. 
;yahI vaha vAswu-SilpI hE jisane mere Gara kA nakSA wEyAra kiyA hE
(defrule lay13
(declare (salience 3700))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xaPZanAne_kI_wEyArI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay13  "  ?id "  " ?id1 "  xaPZanAne_kI_wEyArI_kara  )" crlf))
)

;The priest laid out the old lady.
;pAxarI ne vqxXa mahilA ko xaPZanAne ke liye wEyAra kiyA
(defrule lay14
(declare (salience 3600))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PElA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay14  "  ?id "  " ?id1 "  PElA_xe  )" crlf))
)

;He laid the map out on the floor.
;usane ParSa para mAnaciwra ko PElA xiyA
(defrule lay15
(declare (salience 3500))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ikatTA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lay.clp	lay15  "  ?id "  " ?id1 "  ikatTA_ho  )" crlf))
)

;I laid up so many seeds of flowers for my garden. 
;mEne apane bagIce ke lie PUloM ke DZera sAre bIja ikatTe kie
(defrule lay16
(declare (salience 3400))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOsiKiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lay.clp 	lay16   "  ?id "  nOsiKiyA )" crlf))
)

;"lay","Adj","1.nOsiKiyA"
;A lay musician.
;



;Modified by Meena(12.4.11)
;Once they were caught in a trap laid for birds. 
(defrule lay17
(declare (salience 3300))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id laid)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id raKe_hue))
;(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lay.clp 	lay17   "  ?id "  raKe_hue )" crlf))
)


;Salience reduced by Meena(12.4.11)
(defrule lay18
(declare (salience 0))
;(declare (salience 3300))
(id-root ?id lay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lay.clp       lay18   "  ?id "  raKa )" crlf))
)









;"lay","V","1.raKanA"
;Lay this photograph on the showcase. 
;--"2.letanA"
;Go && lay down on your bed.
;--"3.girA_xenA"
;Hailstorm laid down the crop. 
;--"4.AXAraSilA_raKanA"
;The foundation of this building was laid by the President. 
;--"5.biCAnA"
;Laying mines. 
;--"6.aNde_xenA"
;His chicken layed a golden egg erveryday.
;
;LEVEL 
;
;
;
;Headword : lay
;
;
;Exaples --
;
;
;nIce xiye gae vAkyoM meM "lay" Sabxa kA alaga alaga sanxarBoM meM alaga alaga arWa ho
;rahA hEM jEse :
;
;V
;--"1.raKanA"					
;She lay the book on the table.
;usane kiwAba ko mejZa para raKa xiyA. 
;--"2.lagAnA"
;They called the plumber to lay the pipe.
;unhone plambara ko pAipa lagAne ke liye bulAyA.
;They laid another bet last night.
;kala rAwa unhoMne Pira eka Sarwa lagAI.
;--"3.biCAnA"
;The grapes were laid to dry on the racks.
;aMgUroM ko pawWaroM para sUKane ke liye biCA xiyA.
;--"4.peSa_karanA"
;The committee laid the bill before the board.
;samiwi ne borda ke samakRa bila praswuwa kiyA.
;--"5.biTAnA"
;She sprinkled some water to lay the dust.
;usane XUla ko bETANe ke liye kuCa pAnI CidZakA.
;--"6.hatAnA"
;He told her the truth to lay her fear.
;usake dara ko hatAne ke liye usane use saca bawA xiyA.
;--"7.aMde_xenA" 
;The hens are not laying well this month.
;isa mAha murgiyAz acCI_waraha aMde nahIM xe rahI hEM.
;--"8.dAlanA"
;He lay the blame on his neighbour.
;usane apane padZosI para xoRa dAla xiyA.
;--"9.Sarwa_lagAnA"
;I'll lay you that she will not come.
;mEM wumase Sarwa lagAwA hUz ki vaha nahIM AegI.
;--"10.racanA"
;He will lay a better plot this time.
;isa bAra vaha aXika acCA plOYta racegA.
;--"11.girA_xenA"
;They laid him on the field.
;unhoMne use mExAna meM girA xiyA.
;--"12.litAnA"
;They laid him on the field.
;unhoMne use mExAna meM litA_xiyA.
;
;
;uparaliKiwa vAkyoM meM kriyA "lay" ke jo viBinna arWaM A rahe hEM, 
;ve saBI "raKanA" kI kriyA se saMbaMXiwa hE.
;lekina ina Binna saMxarBoM meM, sirPa "raKanA" se ina alaga alaga kriyAoM ke 
;arWa spaRta nahIM howe hE, kyoMki "lay" kI kriyA kA arWa vAkyoM meM 
;ho rahe kAryoM para nirXAriwa hE. Ora Pira, kyoMki "lay" ke arWaM meM
;"raKane" ke alAvA kaI saMxarBoM meM "biTAne/biCAne" kA BAva BI spaRtawaH A
;rahA hE, hama "lay" kA arWa isa prakAra prApwa kara sakawe hEM :
;
;[biCAkara]raKanA
;
;aMgrejI Sabxa 'lay' 'lie-letanA' kA BUwakAlika rUpa BI hE. kinwu 
;biCAkara_raKanA yA biCe_honA meM yaha arWa BI samAhiwa ho jAwA hE. 
;
;isake awirikwa nIce liKe gae vAkyoM meM "lay" kA upayoga viSeRaNa kI waraha
;ho rahA hE, Ora ina saMxarBoM meM "lay" kA arWa "aviSeRajFa/aviSeRajFa kA"
;EsA howA hE.jEse :
;
;--"13.aviSeRajFa"
;He accepeted to being a lay educationist.
;usane yaha mAnA kI vaha eka aviSeRajFa SikRASAswrI hE.
;--"14.aviSeRajFa_kA"
;This sounds like a lay opinion.
;yaha mawa aviSeRajFa kA lagawA hE.
;
;uxAharaNa 13 Ora 14 'lay' Sabxa kA eka anya asambaxXa arWa 'aviSeRajFa' BI 
;xiKAwe hEM.  awaH isake sUwra ko nimnaprakAra se liKanA hogA --  
;
;
;sUwra : [biCAkara]raKanA/aviSeRajFa-
;
