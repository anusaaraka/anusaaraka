;"drawing","N","1.ciwrakArI"
;He has a very good hand at drawing 
;He takes classes for architectural drawing
;
;
(defrule draw0
(declare (salience 5000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAsa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw0  "  ?id "  " ?id1 "  pAsa_jA  )" crlf))
)

;She was getting afraid as the night drew on.
;jEse -jEse rAwa pAsa A rahI WI vaha dara rahI WI
(defrule draw1
(declare (salience 4900))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 drAPZta_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw1  "  ?id "  " ?id1 "  drAPZta_kAta  )" crlf))
)

;I have some gold saved which i can draw on in an emergency.
;mere pAsa kuCa sonA bacA hE jise mEM ApAwakAla meM nikAla sakawI hUz
(defrule draw2
(declare (salience 4800))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KIMca_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw2  "  ?id "  " ?id1 "  KIMca_le  )" crlf))
)

;He drew on his gloves.
;usane apane xaswAne(hAWoM se) KIMca lie



;Added by Meena(21.5.11)
;It also helps draw out toxins and excess oils.
(defrule draw03
(declare (salience 4800))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?id2)
(or(kriyA-kqxanwa_karma  ?kri ?id)(kriyA-vAkyakarma  ?kri ?id))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KIMca_nikAla))
(assert (make_verbal_noun ?id))
(assert (kriyA_id-object_viBakwi ?kri  meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp  draw03  "  ?id "  " ?id1 "  KIMca_nikAla  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  draw.clp      draw03   "  ?kri " meM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  draw.clp         draw03   "  ?id " )" crlf)
)
)














(defrule draw3
(declare (salience 4700))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bEMka_se_pEsA_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw3  "  ?id "  " ?id1 "  bEMka_se_pEsA_nikAla  )" crlf))
)

;She drew out ten thousand for her friend.
;usane apane miwra ke lie bEMka se xasa hajZAra rupae nikalavAe
(defrule draw4
(declare (salience 4600))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lambA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw4  "  ?id "  " ?id1 "  lambA_kara  )" crlf))
)

;The director drew the movie out for another hour with boring songs.
;nirxeSaka ne ukawAhata Bare gAne dAlakara Pilma ko bevajaha lambA kara xiyA
(defrule draw5
(declare (salience 4500))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saMkoca_Kawma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw5  "  ?id "  " ?id1 "  saMkoca_Kawma_kara  )" crlf))
)

;She tried to draw me out on the stage.
;usane muJe maMca para lAne kI koSiSa kI
(defrule draw6
(declare (salience 4400))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw6  "  ?id "  " ?id1 "  rUka  )" crlf))
)

;She drew up outside my house.
;usane mere Gara ke Age gAdZI rokI
(defrule draw7
(declare (salience 4300))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 krama_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw7  "  ?id "  " ?id1 "  krama_xe  )" crlf))
)

;The teacher drew up the children in line.
;SikRaka ne baccoM ko kramabaxXa kawAra meM kiyA
(defrule draw8
(declare (salience 4200))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAsa_lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw8  "  ?id "  " ?id1 "  pAsa_lA  )" crlf))
)

;I drew up my chair to watch the ludo-game(kind of an indoor game)
;mE apanI kursI ko Kela xeKane ke lie pAsa lAyA
(defrule draw9
(declare (salience 4100))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KAkA_wEyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw9  "  ?id "  " ?id1 "  KAkA_wEyAra_kara  )" crlf))
)

(defrule draw10
(declare (salience 4000))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KAkA_wEyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw10  "  ?id "  " ?id1 "  KAkA_wEyAra_kara  )" crlf))
)

(defrule draw11
(declare (salience 3900))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id drawing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ciwrakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  draw.clp  	draw11   "  ?id "  ciwrakArI )" crlf))
)

(defrule draw12
(declare (salience 3800))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KAkA_wEyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw12  "  ?id "  " ?id1 "  KAkA_wEyAra_kara  )" crlf))
)

(defrule draw13
(declare (salience 3700))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KAkA_wEyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " draw.clp	draw13  "  ?id "  " ?id1 "  KAkA_wEyAra_kara  )" crlf))
)

(defrule draw14
(declare (salience 3600))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draw.clp 	draw14   "  ?id "  KIMca )" crlf))
)

(defrule draw15
(declare (salience 3500))
(id-root ?id draw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAtarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draw.clp 	draw15   "  ?id "  lAtarI )" crlf))
)

;"draw","N","1.lAtarI/nambara_nikalanA"
;The draw for the third round of the cricket tournament.
;When is the draw for the weekly lottery?
;--"2.drOY{prawiyogiwA_jisakI_hAra_jIwa_kA_nirNaya_na_ho}"
;The match ended in a draw. 
;--"3.BIdZa_ko_ekawriwa_karane_hewu_kArya_yA_GatanA"
;The show was a big draw. 
;--"4.xerI_se_kisI_vaswu_ko_samaJa_pAnA"  
;She is a bit slow on the draw.     
;
;LEVEL 
;Headword : draw
;
;Examples --
;
;"draw","VI","1.KIMcanA"
;Draw a line here.
;yahAz eka lAina KIMco.
;Draw the curtains.
;parxe KIMco.
;This chimney draws very well.
;yaha cimanI bahuwa acCe se (XuzA) KIMcawI hE.
;He drew my attention to a point which I had overlooked.
;usane merA XyAna usa binxu kI ora KIMcA jo muJase CUta gayA WA.
;His madness drew passers-by to the scene.
;usake pAgalapana ne rAswe se gujZara rahe logoM ko GatanAsWala kI ora KIMca liyA.
;Draw the name of the winner in a raffle.
;rEPala meM vijewA kA nAma KIMco
;Draw a deep breath
;gaharI sAzsa KIMco
;--"2.ciwra_banAnA"
;Draw a chicken.
;eka murge kA ciwra KIMco.
;--"3.[bAhara]_nikAlanA"
;Please draw this cork out of the bottle.
;kqpayA isa kOYrka ko bOYtala ke bAhara nikAlo/KIMco.
;She drew off a pint of beer.
;usane biyara kA eka piMta nikAlA.
;Draw a card
;eka pawwA nikAlo
;The archers were drawing their bows
;wIraMxAjZa apane XanuRa nikAla rahe We.
;What conclusions did you draw from my report?
;merI riporta se wumane kyA niRkarRa nikAlA?
;She has drawn the information from many different sources.
;usane kaI srowoM se sUcanA nikAlI hE.
;--"4.KIMca_nikAlanA"
;Draw water from a well.
;kuez se pAnI KIMca nikAlo.
;--"5.lenA{nikAla}"
;The participants in the experiment were drawn from a representative population.
;prayoga meM prawiBAgI eka prawiniXi-AbAxI se liye gaye hEM.<--cuna kara KIMcanA
;--"6.le_jAnA"
;Ravi drew Hari out onto the verandah.
;ravi hari ko bAhara barAmxe meM le gayA.<--BIdZa se KIMca kara le jAnA
;--"7.jAnA{niSciwa_xiSA_meM}"
;The train drew onto the station.
;trena steSana para gayI.
;--"8.nirASa_ho_jAnA"
;She was drawn to despair.
;vaha nirASa ho gayI. <--nirASA meM KiMca jAnA
;--"9.liKanA"
;The will was drawn when he was 89 years old
;jaba vaha 89 varRa ke We waba vasIyawa liKI gayI WI.
;Draw a cheque.<---lAina KIMcanA
;ceka liKo.
;--"10.pAnI_kI_niSciwa_sawaha"
;This boat draws 70 feet.
;yaha bota 70 Puta gahare pAnI meM cala sakawI hE.
;yaha bota 70 Puta gaharAI waka KiMcawI hE.
;--"11.KIMcakara_baDZAnA"
;Draw steel
;lohe ko KIMco.
;
;"draw","N","1.nambara_nikalanA{lAtarI_meM}"
;The draw for the third round of the cricket tournament.
;kriketa tUrnAmeMta ke wIsare rAuMda kA nambe nikAlanA.
;When is the draw for the weekly lottery?
;sApwAhika lAtarI kA nambe kaba nikalegA? <--nikAlanA 
;--"2.drOY{prawiyogiwA_jisakI_hAra_jIwa_kA_nirNaya_na_ho}"
;The match ended in a draw.
;mEca drOY meM samApwa huA.<--barAbarI waka KIMca le jAnA
;--"3.ekawriwa_karanevAlA_kArya_yA_GatanA"
;The show was a big draw.
;So meM bahuwa BIdZa AyI. <---So bahuwa logoM ko KIMca kara apanI ora lA sakA
;--"4.samaJa_pAnA"
;She is a bit slow on the draw.
;usako samaJane meM samaya lagawA hE.<--usako sahI bAwa nikAlane meM samaya lagawA hE <--kahI bAwa meM se sahI bAwa ko KIMcanA 
;
;
;sUwra : KIMcanA`^ciwra
