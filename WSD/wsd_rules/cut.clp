;(relation)Modified by Nandini 1-10-2013 (relation)
;It'll be quicker if we cut across the park.
;If we cut across this park,we'll reach early.
(defrule cut0
(declare (salience 60))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(kriyA-across_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIca_se_hokara_gujara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cut.clp 	cut0   "  ?id " bIca_se_hokara_gujara )" crlf))
)

;Jarasandha was cut into two pieces by Bhim.
(defrule cut1
(declare (salience 70))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-into_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cut.clp 	cut1   "  ?id " kAta_dAla )" crlf))
)

;She cut her finger on a piece of glass.
(defrule cut2
(declare (salience 40))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cut.clp 	cut2   "  ?id "  kAta )" crlf))
)

;(added by Nandini 1-10-13)
;Blood poured from the deep cut on his arm.
;Cuts and bruises on the face made her cry.
(defrule cut3
(declare (salience 30))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id GAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  cut.clp  	cut3   "  ?id "  GAva )" crlf))
)

;She never cuts across my statements.
(defrule cut4
(declare (salience 80))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 across)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bIca_meM_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut4  "  ?id "  " ?id1 "  bIca_meM_kAta  )" crlf))
)

;(relation)Modified by Nandini 1-10-2013 
;I've cut down on the amount of salt in my meals.
;mEne apane Bojana meM namaka kI mAwrA meM katOwI kI hE.
(defrule cut5
(declare (salience 90))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(not(kriyA-object ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 katOwI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut5  "  ?id "  " ?id1 "  katOwI_kara  )" crlf))
)

;He cut down the mango tree. (oxford)
;usane Ama kA pedZa kAta xiyA.
(defrule cut6
(declare (salience 90))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-root ?id2 tree)
(kriyA-object ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAta_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut6  "  ?id "  " ?id1 "  kAta_xe  )" crlf))
)

;The firm cut back production because sales were sluggish. 
(defrule cut7
(declare (salience 100))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
;(id-root ?id2 production)
;(kriyA-object ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut7  "  ?id "  " ?id1 "  kama_kara  )" crlf))
)

;We cut the tree back every winter.
(defrule cut8
(declare (salience 110))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 back)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CAZta ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut8  "  ?id "  " ?id1 "  CAZta  )" crlf))
)


;As they stormed the airport enemy fire cut down a lot of soldiers.(active)
(defrule cut9
(declare (salience 120))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(viSeRya-of_saMbanXI  ? ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAra_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut9  "  ?id "  " ?id1 "  mAra_xe  )" crlf))
)

;A lot of soldiers were cut down by enemy fire as they stormed the airport.(passive)
(defrule cut10
(declare (salience 130))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 down)
(kriyA-upasarga ?id ?id1)
(not(kriyA-object ?id ?))
(kriyA-by_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAra_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut10  "  ?id "  " ?id1 "  mAra_xe  )" crlf))
)

;Could you cut your essay from 5000 to 3000 words? [oxford Advance lerner dictionary]
;kyA Apa Apake nibanXa ko 5000 se 3000 SabxoM meM kama kareMge?
(defrule cut11
(declare (salience 120))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 essay)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " cut.clp	cut11  "  ?id "   kama_kara )" crlf))
)

;This scene was cut from the final version of the movie. [oxford Advance lerner dictionary]
(defrule cut12
(declare (salience 140))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 scene)
(kriyA-karma  ?id ?id1)
(kriyA-from_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " cut.clp	cut12  "  ?id "   kAta_xe )" crlf))
)

;When did she cut her first tooth?[oxford Advance lerner dictionary]
(defrule cut13
(declare (salience 150))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 tooth)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " cut.clp	cut13  "  ?id "   nikala )" crlf))
)

;Let us cut for dealer.[oxford Advance lerner dictionary]
;She cut the cards to the dealer. [IITB]
(defrule cut14
(declare (salience 170))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 card)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " cut.clp	cut14  "  ?id "   bAMta )" crlf))
)

;His cruel remarks cut her deeply.[oxford Advance lerner dictionary]
(defrule cut15
(declare (salience 180))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 remark|word|question)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cota_pahuZcha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " cut.clp	cut15  "  ?id "   cota_pahuZcha )" crlf))
)

;He has refused to cut links with these companies.[oxford Advance lerner dictionary]
;She has cut all ties with her family.[oxford Advance lerner dictionary](woda=kAta)
(defrule cut16
(declare (salience 190))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 link|family)
(or(kriyA-object  ?id ?id1)(kriyA-with_saMbanXI  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wodza_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " cut.clp	cut16  "  ?id "   wodza_xe )" crlf))
)

;The injured driver had to be cut from the wreckage.[oxford Advance lerner dictionary]
(defrule cut17
(declare (salience 200))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(root-verbchunk-tam-chunkids cut had_to_be_cut had_to_be_en $? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " cut.clp	cut17  "  ?id "   nikAla_jA )" crlf))
)

;The climbers cut steps in the ice.[oxford Advance lerner dictionary]
;Workmen cut a hole in the pipe.[oxford Advance lerner dictionary]
(defrule cut18
(declare (salience 210))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  step|hole)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " cut.clp	cut18  "  ?id "  banA )" crlf))
)

;Sandstone cuts easily. [oxford Advance lerner dictionary](not an intransative sentence object ;missing)
;This knife will not cut.[oxford Advance lerner dictionary]
(defrule cut19
(declare (salience 45))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-object ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cut.clp 	cut19   "  ?id "  kata )" crlf))
)

;The motorbike cut to the right. [oxford Advance lerner dictionary]
(defrule cut20
(declare (salience 220))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id modZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cut.clp 	cut20   "  ?id "  modZa )" crlf))
)

;Cut the chatter and get on with your work.[oxford Advance lerner dictionary]
(defrule cut21
(declare (salience 230))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 chatter)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cut.clp 	cut21   "  ?id "  baMxa_kara )" crlf))
)

;Cut the chatter and get on with your work.[oxford Advance lerner dictionary]
(defrule cut21-1
(declare (salience 230))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 chatter)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cut.clp 	cut21-1   "  ?id "  baMxa_kara )" crlf))
)

;He had his finger cut off in an accident at work. [oxford Advance lerner dictionary]
;The army was cut off from its base.
(defrule cut22
(declare (salience 240))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-in_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kata_jA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut22  "  ?id "  " ?id1 "  kata_jA )" crlf))
)

;She cut me off in the middle of our conversation. [Cambridge Dictionaries online]
(defrule cut23
(declare (salience 250))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-in_saMbanXI  ?id ?id2)
(viSeRya-of_saMbanXI  ?id2 ?)
;(kriyA-object  ?id ?id2)
(id-cat_coarse ?id verb)
;(id-cat_coarse ?id2 pronoun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut23  "  ?id "  " ?id1 "  roka )" crlf))
)

;The new factory cuts off our view of the hills. [oxford Advance lerner dictionary]
(defrule cut24
(declare (salience 250))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-root ?id2 view)
(kriyA-object  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut24  "  ?id "  " ?id1 "  roka_xe )" crlf))
)

;They cut off the enemy's retreat.[oxford Advance lerner dictionary]
(defrule cut25
(declare (salience 260))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-root ?id2 retreat)
(kriyA-object  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut25  "  ?id "  " ?id1 "  roka )" crlf))
)

;She feels very cut off living in the country.[oxford Advance lerner dictionary]
(defrule cut26
(declare (salience 2700))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
;(kriyA-upasarga ?id ?id1)
(kriyA-object  ?id2 ?id)
(kriyA-off_saMbanXI  ?id2 ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_word_mng ?id ?id1  katA_huA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng   " ?*wsd_dir* " cut.clp	cut26  "  ?id "  " ?id1 "  katA_huA )" crlf))
)

;The winner cut ten seconds off the world record.[oxford Advance lerner dictionary]time.txt--second
(defrule cut27
(declare (salience 280))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 off)
;(kriyA-upasarga ?id ?id1)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "time.gdbm" ?str)))
(kriyA-object  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut27  "  ?id "  " ?id1 "  kama_kara )" crlf))
)

;He cut himself off from all human contact. [oxford Advance lerner dictionary]
(defrule cut28
(declare (salience 290))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-word ?id2 himself|herself)
(kriyA-object  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  alaga_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut28  "  ?id "  " ?id1 "  alaga_kara )" crlf))
)

;She kept cutting in on our conversation.[oxford Advance lerner dictionary]
(defrule cut29
(declare (salience 300))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baXA_dAla ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut29  "  ?id "  " ?id1 " baXA_dAla )" crlf))
)

;They were cut off for not paying their phone bill.[oxford Advance lerner dictionary]
;Our water supply has been cut off.[oxford Advance lerner dictionary]
(defrule cut30
(declare (salience 310))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 off)
(kriyA-upasarga ?id ?id1)
(or(id-root ?id2 supply)(kriyA-karma  ?id ?))
(kriyA-subject  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baMxa_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut30  "  ?id "  " ?id1 " baMxa_kara )" crlf))
)

;They used a machete to cut through the bush.[oxford Advance lerner dictionary]
;unhoMne JAdI meM se rAswA banAne ke lie Cure kA upayoga kiyA.
(defrule cut31
(declare (salience 320))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(kriyA-through_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAswA_banA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cut.clp 	cut31   "  ?id "  rAswA_banA )" crlf))
)

;The prisoners cut their way through the barbed wire.[oxford Advance lerner dictionary]
;banxiyoM ne kaztIlA wAra meM se unakA mArga rAswA banAyA.
(defrule cut32
(declare (salience 330))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 way)
(kriyA-object  ?id ?id1)
;(kriyA-through_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cut.clp 	cut32   "  ?id "  banA )" crlf))
)

;Do not cut your parents out of your lives..[oxford Advance lerner dictionary]
(defrule cut33
(declare (salience 340))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(kriyA-of_saMbanXI  ?id ?)
(viSeRya-RaRTI_viSeRaNa  ? ?id2)
(id-cat_coarse ?id verb)
(id-word ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikAla_bAhara_kar ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut33  "  ?id "  " ?id1 " nikAla_bAhara_kar )" crlf))
)

;Tall trees cut out the sunlight..[oxford Advance lerner dictionary]
(defrule cut34
(declare (salience 350))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut34  "  ?id "  " ?id1 " roka )" crlf))
)

;He's not cut out for teaching..[oxford Advance lerner dictionary]
;He's not cut out to be a teacher.
(defrule cut35
(declare (salience 360))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(kriyA-subject  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banane_yogya ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut35  "  ?id "  " ?id1 " banane_yogya )" crlf))
)

;I would cut out the bit about working as a waitress..[oxford Advance lerner dictionary]
(defrule cut36
(declare (salience 370))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-about_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Coda_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut36  "  ?id "  " ?id1 " Coda_xe )" crlf))
)

;He cut up the meat on his plate.[oxford Advance lerner dictionary]
(defrule cut37
(declare (salience 380))
(id-root ?id cut)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tukade_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cut.clp	cut37  "  ?id "  " ?id1 " tukade_kara )" crlf))
)




;The government has decided to cut back on spending on the armed forces.(spending->modified ;meaning by Nandini)
;The issue cuts across social backgrounds as it affects us all equally.
;Opinion on this issue cuts across traditional political boundaries.


;7)cat lwg_info.dat
;(root-verbchunk-tam-chunkids ?r ?v has_been_ing $? ?id)


