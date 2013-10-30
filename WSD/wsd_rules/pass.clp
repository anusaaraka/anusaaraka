
(defrule pass0
(declare (salience 5000))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id passing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gujZarane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  pass.clp  	pass0   "  ?id "  gujZarane_vAlA )" crlf))
)

;"passing","Adj","1.gujZarane vAlA"
;I watched the passing procession.
;--"2.kRaNika"
;It was just a passing thought.
;
;
(defrule pass1
(declare (salience 4900))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 as)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass1  "  ?id "  " ?id1 "  laga  )" crlf))
)

;She's eighteen but usually passes as twenty.
;vaha aTAraha kI hE paranwu bIsa kI lagawI hE
(defrule pass2
(declare (salience 4800))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gujZara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass2  "  ?id "  " ?id1 "  gujZara_jA  )" crlf))
)

;His grandfather passed away last night.
;usake xAxAjI piCalI rAwa ko gujZara gae
(defrule pass3
(declare (salience 4700))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anaxeKA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass3  "  ?id "  " ?id1 "  anaxeKA_kara  )" crlf))
)

;She passes by my house on her way.
;raswe meM jAwe samaya usane mere Gara ko anaxeKA kara xiyA
(defrule pass4
(declare (salience 4600))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gatiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass4  "  ?id "  " ?id1 "  Gatiwa_ho  )" crlf))
)

;The marriage passed on very well .
;SAxI acCe warIke se ho gaI
(defrule pass5
(declare (salience 4500))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mQwyu_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass5  "  ?id "  " ?id1 "  mQwyu_ho  )" crlf))
)

;Her brother passed on yesterday due to high fever.
;usake BAI kI kala wejZa jvara ke kAraNa mqwyu ho gaI
(defrule pass6
(declare (salience 4400))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SiWila_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass6  "  ?id "  " ?id1 "  SiWila_ho  )" crlf))
)

;She suddenly passed out while going towards the door. 
;xaravAje kI waraPZa jAwe samaya acAnaka hI vaha SiWila ho gaI
(defrule pass7
(declare (salience 4300))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anaxeKA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass7  "  ?id "  " ?id1 "  anaxeKA_kara  )" crlf))
)

;She passed over me as she doesn't know me.
;usane muJe Ese anaxeKA kiyA jEse muJe jAnawI hI nahIM
(defrule pass8
(declare (salience 4200))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 asvIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass8  "  ?id "  " ?id1 "  asvIkAra_kara  )" crlf))
)

;She passed up my suggestion without even think of it.
;usane merI salAha ko binA soce-samaJe asvIkAra kara xiyA
(defrule pass9
(declare (salience 4100))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-away_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass9  "  ?id "  " ?id1 "  mara  )" crlf))
)

(defrule pass10
(declare (salience 4000))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pass.clp	pass10  "  ?id "  " ?id1 "  mara  )" crlf))
)

(defrule pass11
(declare (salience 3900))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 ball)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pass.clp 	pass11   "  ?id "  PeMka )" crlf))
)

(defrule pass12
(declare (salience 3800))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gujZara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pass.clp 	pass12   "  ?id "  gujZara )" crlf))
)


;Added by sheetal(20-01-10).
(defrule pass13
(declare (salience 3850))
(id-root ?id pass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1) ; Added by Meena(22-01-10)
(id-root ?id1 law|bill) ; Added bill to the list by Meena (22-01-10)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pass.clp      pass13   "  ?id "  pAriwa_kara )" crlf))
)
;In January 1990 , a historic new law was passed .


;"pass","V","1.gujZaranA"
;The street was so crowded that the traffic was unable to pass.
;Time has passed so quickly that we are surprised.
;--"2.haswAMwariwa karanA"
;Read && pass on the newspaper.
;--"3.pAra karanA"
;Pass the shop && you will be in front of  the school.
;--"4.uwwarAXikAra meM pAnA"
;I have inherited my nature as it passed from my father to me.
;--"5.uwwIrNa honA"
;I don't know much psychology but I have to pass my exam.
;--"6.maMjZUra honA"
;The bill should be passed in this session only.
;--"7.sahana karanA"
;Her provocative remarks passed without comment.
;
;
;LEVEL 
;
;
;Headword : pass
;                  ------
;Examples --
;
;`pass' ke viviXa prayoga--
;
;"pass","V","1.gujZaranA"
;The street was so crowded that the traffic was unable to pass.
;Time has passed so quickly that we are surprised.
;--"2.haswAMwariwa karanA"
;         ---- < gujAranA < gujaranA
;Read && pass on the newspaper.
;--"3.pAra karanA"
;         ---- < kisI sWala-viSeRa se gujaranA < gujaranA 
;Pass the shop && you will be in front of  the school.
;--"4.uwwarAXikAra meM pAnA"
;         ---- < gujarakara Awe hue ko vyakwi-viSeRa xvArA prApwa karanA < gujaranA 
;I have inherited my nature as it passed from my father to me.
;--"5.uwwIrNa honA"
;         ---- < gujarane meM saPala honA < gujaranA 
;I don't know much psychology but I have to pass my exam.
;--"6.maMjZUra honA"
;         ---- < gujarawe hue saPala honA < gujaranA 
;The bill should be passed in this session only.
;--"7.sahana karanA"
;         ---- < kinhIM BAva-viSeRoM kA prawikriyA ke uwpanna
;                                        kiye binA gujAranA < gujaranA 
;Her provocative remarks passed without comment.
;--------------------------------------------------------
;
;sUwra : uwwIrNa_honA[<gujaranA<Age_baDZanA`]
;-----------------
;
;    `pass' Sabxa ke Upara ke viviXa prayoga aMgrejI meM hEM . inakA hinxI meM 
;alaga-alaga arWa samaJA jAwA hE, punarapi eka samAna BAva saBI arWoM meM sAmAnya 
;lagawA hE . vaha BAva gujarane kA hE . Upara kI saBI kriyAoM meM gujarane kA BAva
;samaJA jA sakawA hE, jisase arWa-viswAra huA hE . 
;
;-- haswAnwariwa karanA . haswAnwariwa karane meM vaswu kA eka hAWa se xUsare hAWa meM 
;gujAranA howA hE . 
;
;-- pAra karanA . kisI sWala-viSeRa se gujarakara usa kriyA kA samApwa karanA   
;pAra karanA kahalAwA hE .
;
;-- uwwarAXikAra meM pAnA . Upara se gujarakara AwI huI cIja ko kisIke xvArA 
;prApwa karanA uwwarAXikAra meM pAnA howA hE .
;
;-- uwwIrNa honA . kisImeM se gujarane meM saPala honA . parIkRA Axi meM uwwIrNa 
;honA arWAw usameM se gujarane meM saPala honA hI mAnA jAwA hE . 
;
;-- maMjUra honA . maMjUra hone kI prakriyA meM praswAva yA anya kisI kA eka xUsare 
;ke pAsa se gujarawe hue usakA saPala honA howA hE . yA PAIloM Axi kA eka xUsare
;ke pAsa se gujarane, se isakA arWa-viswAra socA jA sakawA hE .   
;       
;-- sahana karanA .  kinhIM BAvoM kA binA prawikriyA(bAharI) ke gujAranA sahana 
;karanA kahalAwA hE .   
;
;
