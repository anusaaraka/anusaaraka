
(defrule push0
(declare (salience 5000))
(id-root ?id push)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " push.clp	push0  "  ?id "  " ?id1 "  jA  )" crlf))
)

;I'm late.I'll have to be pushing along now.
;muJe xera ho gaI hE,muJe aba jAnA hogA
(defrule push1
(declare (salience 4900))
(id-root ?id push)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 burA_vyavahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " push.clp	push1  "  ?id "  " ?id1 "  burA_vyavahAra  )" crlf))
)

;She doesn't let anyone push her around.
;vaha kisI ko apane sAWa burA vyavahAra nahIM karane xewI
(defrule push2
(declare (salience 4800))
(id-root ?id push)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " push.clp	push2  "  ?id "  " ?id1 "  jA  )" crlf))
)

;i'm late.I'll have to push on.
;muJe xera ho gaI hE,muJe jAnA hogA
(defrule push3
(declare (salience 4700))
(id-root ?id push)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 aside)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kinAre_hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " push.clp	push3  "  ?id "  " ?id1 "  kinAre_hatA  )" crlf))
)

(defrule push4
(declare (salience 4600))
(id-root ?id push)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 aside)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kinAre_hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " push.clp	push4  "  ?id "  " ?id1 "  kinAre_hatA  )" crlf))
)

(defrule push5
(declare (salience 4500))
(id-root ?id push)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_Dakela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " push.clp	push5  "  ?id "  " ?id1 "  pICe_Dakela  )" crlf))
)

(defrule push6
(declare (salience 4400))
(id-root ?id push)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_Dakela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " push.clp	push6  "  ?id "  " ?id1 "  pICe_Dakela  )" crlf))
)

(defrule push7
(declare (salience 4300))
(id-root ?id push)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xakela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  push.clp 	push7   "  ?id "  Xakela )" crlf))
)

(defrule push8
(declare (salience 4200))
(id-root ?id push)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XakkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  push.clp 	push8   "  ?id "  XakkA )" crlf))
)

;"push","N","1.XakkA"
;Give a push to the door to be opened.
;--"2.aBiyAna"
;The general ordered the soldiers to implement a push.
;
;LEVEL 
;Headword  :push
;
;Examples --
;
;"push,"V","1.XakelanA"
;He pushed the boy down the staircase,
;usane ladake ko sIDZIoM para se XakelA
;--2."xabAva_dAlanA"<-- XakelanA
;You will have to push him to complete the work
;kAma pUrA karane ke lie wumhe usa para xabAva dAlanA hogA
;--"3.xabAnA"<-- XakelanA
;You can get tea by pushing the red button
;lAla batana xabAne para wumhe cAya milegI
;--"4.jora_lagAkara_Age_baDZanA"<-- XakelanA
;The army pushed towards the border
;senA sImA kI ora Age baDZane lage
;--"5.eka_waraPa_KisakAnA"<--XakelanA
;She pushed her head further under the pillow
;usane sira ko wakiye ke Ora BI nIce eka waraPa KisakAyA
;
;"push","N","1.XakkA"
;He fell down because of a push from the back
;pICe se XakkA lagane se vaha nIce gira padA
;--"2.BArI_koSiSa"<--XakkA
;He gave a push to the programme
;isa progrAma ke lie usane BArI koSiSa kI
;
;commentary : Push -Antonym.pull
;
;vyAKyA : uparyukwa aMkiwa Sabxa `push' kA kriyA vAkyoM me nABikIya arWa 
;`XakelanA' A rahA hE. Ora saMjFA vAkyoM meM nABikIya arWa `XakkA' A rahA 
;hE.
;
;
;anwarnihiwa sUwra:
;
;"push","V","XakelanA"
;                                xabAva_dAlanA 
;                                   ^
;                                   |
;                              ===========
;                    xabAnA <-- |  XakelanA  | - eka_waraPa_KisakAnA 
;                              ===========
;                                   |
;                                   v
;                           jZora_lagAkara_Age_baDZanA
;
;
;
;sUwra : XakelanA^XakkA
;                    
