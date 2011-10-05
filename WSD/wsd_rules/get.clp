

;Added by Meena(12.3.10)
;She had gotten her family to go against convention. 
;And she declared that out of love for the poor she had gotten her family to go against convention . 
(defrule get0
(declare (salience 5000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(not(id-root ?id1 book|topic|chance))
(saMjFA-to_kqxanwa  ?id1 ?id2);renamed saMjFA-kqxanwa as saMjFA-to_kqxanwa by Manju (05-02-11)
(to-infinitive  =(+ ?id1 1) ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  preriwa_kara ))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp       get0   "  ?id " preriwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  get.clp       get0   "  ?id " ko )" crlf)
)
)




;Modified by Meena(16.8.11)
;He has got a cow and two dogs.
(defrule get1
(declare (salience 5000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is|have|has)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
;(assert (id-wsd_root_mng ?id hE_nahIM))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get1   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  get.clp       get1   "  ?id " ke_pAsa )" crlf)
)
)



;Modified by Meena(17.8.11)
;He had got a cow and two dogs.
(defrule get2
(declare (salience 4800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) had)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
;(assert (id-wsd_root_mng ?id WA_nahIM))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get2   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  get.clp       get2   "  ?id " ke_pAsa )" crlf)
)
)


(defrule get3
(declare (salience 4600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aPavAha_PEla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get3  "  ?id "  " ?id1 "  aPavAha_PEla  )" crlf))
)

;I don't know how the story got about that she'd got married.
;mEM nahIM jAnawA ki yaha aPavAha kEse PEla gaI ki usakI SAxI ho gaI
(defrule get4
(declare (salience 4500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 across)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get4  "  ?id "  " ?id1 "  samaJA  )" crlf))
)

;This is the mesage that we want to get across to the people.
;yahI vaha saMxeSa hE jo hama logoM ko samaJAnA cAhawe We
(defrule get5
(declare (salience 4400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICA_kara\pICe_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get5  "  ?id "  " ?id1 "  pICA_kara\pICe_jA  )" crlf))
)

;Get after her && tell her not to wait for us.
;usake pICe jAo Ora kaho ki hamArA iMwajZAra na kare
(defrule get6
(declare (salience 4300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 ahead)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get6  "  ?id "  " ?id1 "  saPala_ho  )" crlf))
)




;It's tough for any woman to get ahead in politics.
;rAjanIwi meM saPala honA kisI BI Orawa ke lie bahuwa kaTina hE
(defrule get7
(declare (salience 4200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get7  "  ?id "  " ?id1 "  Age_baDZa  )" crlf))
)

;I can't get along without some help.
;mEM binA maxaxa ke Age nahIM baDZa sakawA
(defrule get8
(declare (salience 4100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acCe_saMbaMXa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get8  "  ?id "  " ?id1 "  acCe_saMbaMXa_ho  )" crlf))
)


;I get along very well with her.
;mere usake sAWa bahuwa acCe saMbaMXa hEM
(defrule get9
(declare (salience 4000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aPavAha_PEla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get9  "  ?id "  " ?id1 "  aPavAha_PEla  )" crlf))
)

;I don't know how the story got about that she'd got married.
;mEM nahIM jAnawA ki yaha aPavAha kEse PEla gaI ki usakI SAxI ho gaI
(defrule get10
(declare (salience 3900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hala_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get10  "  ?id "  " ?id1 "  hala_nikAla  )" crlf))
)

;We don't see any way of getting around these difficulties.
;hama ina kaTinAiyoM se nikalane kA koI BI hala nahIM nikAla pA rahe hEM
(defrule get11
(declare (salience 3800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AlocanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get11  "  ?id "  " ?id1 "  AlocanA_kara  )" crlf))
)

;His boss is always getting at him for arriving late.
;usakA bAsa hameSAM xerI se Ane para usakI AlocanA karawA hE
(defrule get12
(declare (salience 3700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get12  "  ?id "  " ?id1 "  samaJa  )" crlf))
)

;What do you think she's getting at? I've no idea what she wants!
;wumhe kyA lagawA hE ki usane kyA samaJA hE?muJe nahIM pawA vaha kyA cAhawI hE!
(defrule get13
(declare (salience 3600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pakadZa_meM_na_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get13  "  ?id "  " ?id1 "  pakadZa_meM_na_A  )" crlf))
)

;He gets away with murder.
;vaha kawla karane para BI pakadZa meM nahIM AyA
(defrule get14
(declare (salience 3500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 dAka_se_Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get14  "  ?id "  " ?id1 "  dAka_se_Beja  )" crlf))
)

;You must get this letter away today itself.
;wumheM yaha citTI Aja hI dAka se Beja xenI cAhie
(defrule get15
(declare (salience 3400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CutakArA_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get15  "  ?id "  " ?id1 "  CutakArA_pA  )" crlf))
)

;The thieves got away from the police.
;coroM ne pulisa se CutakArA pA liyA
(defrule get16
(declare (salience 3300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baxalA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get16  "  ?id "  " ?id1 "  baxalA_le  )" crlf))
)

;One day i'll get back at this insult.
;eka xina mEM isa beijjawI kA baxalA lUzgA
(defrule get17
(declare (salience 3200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAma_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get17  "  ?id "  " ?id1 "  kAma_calA  )" crlf))
)

;Although this money is not sufficient but i'll get by it.
;hAlAMki yaha pEsA kAPI nahIM hE paraMwu mEM isase kAma calA lUMgA
(defrule get18
(declare (salience 3100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Suru_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get18  "  ?id "  " ?id1 "  Suru_kara  )" crlf))
)

;I find it difficult to get down to doing my work after the vacations.
;CuttiyoM ke bAxa kAma Suru karane meM muJe pareSAnI howI hE
(defrule get19
(declare (salience 3000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uxAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get19  "  ?id "  " ?id1 "  uxAsa_kara  )" crlf))
)

;The miserable weather in winter really gets me down.
;sarxiyoM kA yaha KZarAba mOsama muJe uxAsa kara xewA hE
(defrule get20
(declare (salience 2900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nigala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get20  "  ?id "  " ?id1 "  nigala  )" crlf))
)

;Her throat was so swollen that she couldn't get anything down.
;usakA galA iwanA sUjA huA WA ki vaha kuCa BI nahIM nigala pA rahI WI
(defrule get21
(declare (salience 2800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get21  "  ?id "  " ?id1 "  liKa  )" crlf))
)

;Did you get down everything he said?
;kyA wumane saba kuCa liKa liyA jo usane kahA?
(defrule get22
(declare (salience 2700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
;(id-word  =(+ ?id 1) in)
;(id-word =(+ ?id 2) with)
(kriyA-upasarga ?id ?id1)      
;(kriyA-object ?id ?)           (commented by Meena)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 miwrawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get22  "  ?id "  " ?id1 "  miwrawA_kara  )" crlf))
)

;He's always ready to get in with the right person.
;vaha sahI AxamI se miwrawA karane meM hameSAM wEyAra rahawA hE


;This rule get24 was also modified by Meena on 16.10.08 to avoid the clash with other senses.The statement no 6 was added and the statements 8 & 9 were commented.

;I finally managed to get a word in.
;AKirakAra mEne vo Sabxa kaha hI xiyA

(defrule get23
(declare (salience 2600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(test (> ?id1 ?id))
(id-cat_coarse ?id verb)
;(kriyA-upasarga ?id ?id1)
;(kriyA-object ?id ?)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get23   "  ?id "  kaha_xe )" crlf))
)

(defrule get24
(declare (salience 2500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AvaSyakawA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get24  "  ?id "  " ?id1 "  AvaSyakawA_ho  )" crlf))
)

;There is a problem in the wire-we have to get an electrician in.
;wAra meM kuCa KarAbI hE,hameM eka bijalI vAle kI AvaSyakawA hE
(defrule get25
(declare (salience 2400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get25  "  ?id "  " ?id1 "  pahana  )" crlf))
)

;It's very difficult to get into this tight shirt.
;isa waMga kamIjZa ko pahananA bahuwa kaTina hE
(defrule get26
(declare (salience 2300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 padZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get26  "  ?id "  " ?id1 "  padZa_jA  )" crlf))
)

;You'll get into a trouble if you don't do this work.
;yaxi wuma yaha kAma nahIM karoge wo musIbawa meM padZa jAoge 
;PP_null_off && transitivity=TR && category=verb	SArIrika_saMbaMXa_sWApiwa_kara	0
(defrule get27
(declare (salience 2200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 bicycle)
(viSeRya-off-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwara))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get27  "  ?id "  " ?id1 "  uwara  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  get.clp       get27   "  ?id " se )" crlf)
)


;He'd got off with a girl at the party.
;usane pArtI meM eka ladZakI ke sAWa SArIrika saMbaMXa sWApiwa kiyA
(defrule get28
(declare (salience 2100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get28  "  ?id "  " ?id1 "  uwAra  )" crlf))
)

;I'll not get off these shoes.
;mEM ye jUwe nahIM uwArUzgA
;PP_null_off && transitivity=TR && category=verb	baxala	0
;Can we get off this subject?
;kyA hama yaha viRaya baxala sakawe hEM?
(defrule get29
(declare (salience 2000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AlocanA_karawe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get29  "  ?id "  " ?id1 "  AlocanA_karawe_raha  )" crlf))
)

;You're always getting on at me!
;wuma hameMSAM merI AlocanA karawe rahawe ho
(defrule get30
(declare (salience 1900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saMparka_sWApiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get30  "  ?id "  " ?id1 "  saMparka_sWApiwa_kara  )" crlf))
)

;Did you get on to the passport office?
;kyA wumane pAsaporta APisa se saMparka sWApiwa kiyA?
(defrule get31
(declare (salience 1800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get31  "  ?id "  " ?id1 "  Age_baDZa  )" crlf))
)

;I can't get on without some help.
;mEM binA maxaxa ke Age nahIM baDZa sakawA






;Added by Meena(17.6.10)
;According to Sarah they are not getting on very well at the moment . 
(defrule get32
(declare (salience 2500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-at_saMbanXI  ?id  ?id3)
(kriyA-kriyA_viSeRaNa  ?id  ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mEwrIpUrNa_saMbaMXa_cala))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get32  "  ?id "  " ?id1 "  mEwrIpUrNa_saMbaMXa_cala  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  get.clp       get32   "  ?id " kA )" crlf))
)


;We get on very well together.
;hama xonoM meM mEwrIpUrNa saMbaMXa hEM





(defrule get33
(declare (salience 1600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bUDZe_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get33  "  ?id "  " ?id1 "  bUDZe_ho  )" crlf))
)

;How old is Sam?He must be getting on.
;sEma kI umra kyA hE ?vaha BI bUDZA ho rahA hogA
(defrule get34
(declare (salience 1500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get34  "  ?id "  " ?id1 "  bAhara_nikAla  )" crlf))
)

;How can i get him out of this situation?
;mEM use isa sWiwi se kEse bAhara nikAla sakawA hUz?
(defrule get35
(declare (salience 1400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aPavAha_PEla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get35  "  ?id "  " ?id1 "  aPavAha_PEla  )" crlf))
)

;I don't know how the story got out that she'd got married.
;mEM nahIM jAnawA ki yaha aPavAha kEse PEla gaI ki usakI SAxI ho gaI
(defrule get36
(declare (salience 1300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kaha_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get36  "  ?id "  " ?id1 "  kaha_xe  )" crlf))
)
;I finally managed to get the word out
;AKirakAra mEne vo Sabxa kaha hI xiyA
(defrule get37
(declare (salience 1200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  get.clp 	get37   "  ?id " "?id1" CApa )" crlf)
)
)

;We'll have to get this newspaper out before next week.
;hameM yaha aKZabAra agale haPwe se pahale CApanA hogA

(defrule get38
(declare (salience 1000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 TIka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get38  "  ?id "  " ?id1 "  TIka_ho  )" crlf))
)

;He has got over his fever now.
;usakA buKZAra aba TIka ho gayA hE
(defrule get39
(declare (salience 900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get39  "  ?id "  " ?id1 "  samaJA  )" crlf))
)

;This is the mesage that we want to get over to the people.
;yahI vaha saMxeSa hE jo hama logoM ko samaJAnA cAhawe We
(defrule get40
(declare (salience 800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 round)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get40  "  ?id "  " ?id1 "  samaJA  )" crlf))
)

;I know she is not agree with me at the moment but i'll get round her.
;mEM jAnawA hUz ki vo aBI muJase sahamawa nahIM hE lekina mEM use samaJA lUzgA
(defrule get41
(declare (salience 700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get41  "  ?id "  " ?id1 "  bAwa_kara  )" crlf))
)

;I couldn't get through (to my friend) yesterday.
;mEM kala apane xoswa se bAwa nahIM kara sakA
(defrule get42
(declare (salience 600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAsa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get42  "  ?id "  " ?id1 "  pAsa_ho  )" crlf))
)

;I can't get through in this exam!
;mEM isa parIkRA meM pAsa nahIM ho sakawA
(defrule get43
(declare (salience 500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get43  "  ?id "  " ?id1 "  samaJA  )" crlf))
)

;I can't get through to him that drinking (alcohal) is bad for his health.
;mEM use nahIM samaJA sakawA ki (SarAba) pInA usakI sehawa ke lie hAnikAraka hE
(defrule get44
(declare (salience 400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KZawma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get44  "  ?id "  " ?id1 "  KZawma_kara  )" crlf))
)
;I got through a whole glass of milk
;mEne xUXa kA pUrA gilAsa pI kara KZawma kara xiyA




(defrule get45
(declare (salience 200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get45  "  ?id "  " ?id1 "  pahuzca  )" crlf))
)

;Which question did you get up to in the test? 
;wuma parIkRA meM kOna se praSna para pahuzce We ?
(defrule get46
(declare (salience 100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wejZa_ho\baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get46  "  ?id "  " ?id1 "  wejZa_ho\baDZa  )" crlf))
)

;The wind is getting up,it seems there is going to be a storm.
;havA wejZa ho rahI hE,lagawA hE ki wUPAna Ane vAlA hE
(defrule get47
(declare (salience 0))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyavasWA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get47  "  ?id "  " ?id1 "  vyavasWA_kara  )" crlf))
)

;We must get up a party for his farewell.
;hameM usakI vixAI ke lie pArtI kI vyavasWA karanI cAhie
(defrule get48
(declare (salience -100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PEla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get48  "  ?id "  " ?id1 "  PEla_jA  )" crlf))
)



(defrule get49
(declare (salience -300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAma_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get49  "  ?id "  " ?id1 "  kAma_calA  )" crlf))
)


(defrule get50
(declare (salience -500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get50  "  ?id "  " ?id1 "  BAga_jA  )" crlf))
)



(defrule get51
(declare (salience -700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lOta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get51  "  ?id "  " ?id1 "  lOta  )" crlf))
)



(defrule get52
(declare (salience -900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 behind)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 piCadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get52  "  ?id "  " ?id1 "  piCadZa  )" crlf))
)



(defrule get53
(declare (salience -1100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acCA_mAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get53  "  ?id "  " ?id1 "  acCA_mAna_le  )" crlf))
)



(defrule get54
(declare (salience -1300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get54  "  ?id "  " ?id1 "  uwara  )" crlf))
)



(defrule get55
(declare (salience -1500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gusa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get55  "  ?id "  " ?id1 "  Gusa  )" crlf))
)


;He was not in when I got there , so it was a completely wasted journey .
(defrule get56
(declare (salience -1600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id  =(- ?id 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get56   "  ?id "  pahuzca )" crlf))
)

(defrule get57
(declare (salience -1700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 inside)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anxara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get57  "  ?id "  " ?id1 "  anxara_jA  )" crlf))
)



(defrule get58
(declare (salience -1900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praveSa_kara))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get58  "  ?id "  " ?id1 "  praveSa_kara  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  get.clp       get58   "  ?id " meM )" crlf))
)





(defrule get59
(declare (salience -2100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwara))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get59  "  ?id "  " ?id1 "  uwara  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  get.clp       get59   "  ?id " se) " crlf)
)




(defrule get60
(declare (salience -2300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pragawi_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get60  "  ?id "  " ?id1 "  pragawi_kara  )" crlf))
)


(defrule get61
(declare (salience -2500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawA_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get61  "  ?id "  " ?id1 "  pawA_cala  )" crlf))
)


(defrule get62
(declare (salience -2700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BUla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get62  "  ?id "  " ?id1 "  BUla_jA  )" crlf))
)



(defrule get63
(declare (salience -3000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 rid)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CutakArA_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get63 "  ?id "  " ?id1 "  CutakArA_pA  )" crlf))
)

(defrule get64
(declare (salience -3100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get64  "  ?id "  " ?id1 "  pUrA_kara  )" crlf))
)


(defrule get65
(declare (salience -3300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get65  "  ?id "  " ?id1 "  pahuzca  )" crlf))
)


(defrule get66
(declare (salience -3500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ekawra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get66  "  ?id "  " ?id1 "  ekawra_kara  )" crlf))
)


(defrule get67
(declare (salience -3700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get67  "  ?id "  " ?id1 "  uTa  )" crlf))
)


(defrule get68
(declare (salience -3900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 dark)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get68   "  ?id "  ho )" crlf))
)

(defrule get69
(declare (salience -4000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 late)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get69   "  ?id "  ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  get.clp       get69   "  ?id " ko )" crlf)
)
)


 ;Modified by sheetal.
(defrule get70
(declare (salience 4950))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_mUla  ?id ?id1)
(id-word ?id1 upset)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (make_verbal_noun ?id1))
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id1 ?id uwwejiw_ho))
;(assert (id-wsd_root_mng ?id uwwejiw_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun   " ?*wsd_dir* "  get.clp     get70   "  ?id " )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  get.clp       get92   "  ?id  ?id1 "  uwwejiw_ho )" crlf))
)
 


;Modified by Meena(1.11.10)
;Why does not the shoe get there first , since gravity is pulling harder on it ? 
(defrule get71
(declare (salience -4400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 home)
(or(kriyA-object ?id ?id1)(kriyA-aXikaraNavAcI_avyaya  ?id ?id1)) ;kriyA-lupwa_prep_saMbanXI  is now changed to kriyA-aXikaraNavAcI_avyaya (Modified by Roja 28-12-10 Suggested by Sukhada)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get71   "  ?id "  pahuzca )" crlf))
)





;Modified by Meena(25.6.10)
;The last I heard they were getting a divorce.
;I went to the store, got a gallon of milk and returned the eggs.
(defrule get72
(declare (salience 1500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
;(viSeRya-of_saMbanXI  ?id1  =(+ ?id1 2))  ;commented by Meena(25.5.10)
(kriyA-object ?id ?id1)
(id-root ?id1 petrol|milk|gallon|divorce)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp       get72   "  ?id "  le )" crlf))
)




;Modified by Meena(1.11.10)
;The five best costumes got prizes.  
(defrule get73
(declare (salience -1500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id1 noun)
(id-root ?id1 letter|book|prize|this|them|advantage)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get73   "  ?id "  prApwa_kara )" crlf))
)

(defrule get74
(declare (salience -4600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 freedom)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get74   "  ?id "  pA )" crlf))
)




;Added by Meena(15.9.11)
;He got a topic to speak at the forum. 
;We did not even get a chance to do the programs we wanted to do. 
(defrule get75
(declare (salience -1600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 topic|chance)
(kriyA-object ?id ?id1)
(or(saMjFA-to_kqxanwa  ?id1 =(+ ?id1 2))(kriyA-kriyArWa_kriyA  ?id =(+ ?id1 2)))
=>
(retract ?mng)
(assert (kriyA_id-subject_viBakwi ?id ko))
(assert (id-wsd_root_mng ?id mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp       get75   "  ?id "  mila )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  get.clp      get75   "  ?id " ko )" crlf))
)





(defrule get76
(declare (salience -4700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) me|us|him|her|them)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get76   "  ?id "  lA_xe )" crlf))
)


(defrule get77
(declare (salience -4900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get77  "  ?id "  " ?id1 "  uTa  )" crlf))
)


(defrule get78
(declare (salience -5700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rukAvatoM_ke_bAvajUxa_pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get78  "  ?id "  " ?id1 "  rukAvatoM_ke_bAvajUxa_pahuzca  )" crlf))
)




(defrule get79
(declare (salience -6000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get79  "  ?id "  " ?id1 "  bAhara_ho_jA  )" crlf))
)


(defrule get80
(declare (salience -6200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get80   "  ?id "  prApwa_kara )" crlf))
)


;Added by sheetal(29-12-2009).
(defrule get81
(declare (salience 4950))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) wet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp      get81   "  ?id "  ho )" crlf))
)
;Do not get wet in the rain .


;default_sense && category=verb	mila	0
;"get","V","1.milanA"
;I get my salary on the 7th of every month.
;--"2.pahuzcanA"
;Please get to the airport before noon.
;--"3.samaJanA"
;Are you getting my point?
;--"4.rAjI_karanA"
;I will get him to speak to you.
;
;
