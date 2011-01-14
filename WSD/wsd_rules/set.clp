
(defrule set0
(declare (salience 5000))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id setting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jamAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  set.clp  	set0   "  ?id "  jamAnA )" crlf))
)

;given_word=setting && word_category=noun	$vAwAvaraNa)

;"setting","N","1.vAwAvaraNa"
;The golf field is situated in perfect setting.
;--"2.vinyAsa"
;The cooker has several temperature settings.
;--"3.jamAvata"
;Can you give me your diamond ring with gold setting.
;--"4.saMgIwa"
;Rehaman's setting for vandemataram is very popular.
;
;
(defrule set1
(declare (salience 4900))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 free)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mukwa_kiyA_gayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set1  "  ?id "  " ?id1 "  mukwa_kiyA_gayA  )" crlf))
)

(defrule set2
(declare (salience 4800))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 free)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mukwa_kiyA_gayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set2  "  ?id "  " ?id1 "  mukwa_kiyA_gayA  )" crlf))
)

(defrule set3
(declare (salience 4700))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wEyAra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set3  "  ?id "  " ?id1 "  wEyAra_ho  )" crlf))
)

(defrule set4
(declare (salience 4600))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wEyAra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set4  "  ?id "  " ?id1 "  wEyAra_ho  )" crlf))
)

(defrule set5
(declare (salience 4500))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWApiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set5  "  ?id "  " ?id1 "  sWApiwa_kara  )" crlf))
)

(defrule set6
(declare (salience 4400))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWApiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " set.clp	set6  "  ?id "  " ?id1 "  sWApiwa_kara  )" crlf))
)

(defrule set7
(declare (salience 4300))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 trap)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set7   "  ?id "  raKa )" crlf))
)

(defrule set8
(declare (salience 4200))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jamA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set8   "  ?id "  jamA )" crlf))
)

(defrule set9
(declare (salience 4100))
(id-root ?id set)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  set.clp 	set9   "  ?id "  niSciwa )" crlf))
)

;"set","Adj","1.niSciwa"
;This Hotel serves meals at set times.
;--"2.xqDZa"
;She has very set ideas on womens' issues. 
;--"3.kqwrima"
;She always has a set expression on her face.
;--"4.wEyAra"
;The new political party looks set for victory in the general election.
;--"5.nirXAriwa"
;Every winter they visit us on set days.
;
;LEVEL 
;Headword : set
;
;Examples --
;
;"set","N","1.seta" (eka sAWa kAma meM AnevAlI vaswuoM kA samUha jEse 'hAra, aMgUTI, bunxe Ora kadZe' milakara eka gahanoM kA 'seta' hogA.)
;Can you get a cutlery set for me?
;kyA wuma mere liye eka katalarI sEta lAoge. (katalarI seta - kAztA, cammaca Ora CurI)
;--"2.xqSyabanXa"
;The film has beautiful sets.
;Pilma meM sunxara xqSyabanXa hEM.
;--"3.samuccaya"
;He is solving the problems in the chapter sets.
;vaha aXyAya samuccayoM kI samasyAoM ko sulaJA rahA hE.
;
;"set","V","1.raKa xenA"
;She set a tray down on the table.
;usane mejZa para tre raKa xI. 
;--"2.CuAyA"
;Hari set pen to paper to complete the letter.
;hari ne pawra Kawama karane ko kAgajZa para kalama CuAyA.
;--"3.lagAnA"
;Why don't you set the alarm at 6 O' clock?
;wuma CaH baje kA alArma kyoM nahIM lagAwe ho ?
;--"4.jadZanA"
;Her necklace was set with rubies.
;usakA hAra rUbiyoM se jadZA WA.
;--"5.niSciwa karanA"
;They haven't set a date for their wedding yet.
;unhoMne aBI waka apanI SAxI kA xina niSciwa nahIM kiyA hE.
;--"6.kAyama karanA"
;She set a new world record for the marathon.
;usane mErAWana xOdZa meM eka nayA viSva rikOYrda kAyama kiyA.
;--"7.jamanA"
;The cement will take some time to set.
;sImeMta ko jamane meM kuCa samaya legA.
;--"8.kasanA"
;She set her jaw in a determined manner.
;usane apanI TodZI ko xqDZawA se kasa liyA
;--"9.bETAnA"
;The sergeon set her broken bone.
;sarjana ne usakI tUtI haddI ko biTAyA.
;--"10.kampojZa karanA"
;Books were previously set by hand but not any more.
;pahale kiwAboM ko hAWa se kampojZa kiyA jAwA WA, para aba nahIM.
;--"11.aswa ho jAnA"
;The sun in northern countries sets much later in summer than in winter.
;uwwarI xeSoM meM sUraja garmiyoM meM sarxiyoM kI apekRA xera se aswa howA hE.
;
;"set","Adj","1.niSciwa"
;Hotel meals are served at set times.
;hotala meM KAnA niSciwa samaya para xiyA jAwA hE.
;--"2.xqDZa"
;She has very set ideas on bringing up children.
;baccoM ko pAlane ke viRaya meM usake bahuwa xqDZa vicAra hEM.
;--"3.eka_hI_waraha_kA"
;She always has a set expression on her face.
;usake cehare para hameSA eka hI sA BAva rahawA hE.
;--"4.wEyAra"
;The new political party looks set for victory in the general election.
;nayA rAjanEwika xala Ama cunAvoM meM jIwa ke liye wEyAra lagawA hE. 
;--"5.nirXAriwa"
;Every winter they visit us on set days.
;ve hara sarxiyoM meM hamAre pAsa nirXAriwa xinoM meM Awe hEM.
;
;
;Upara xiye uxAharaNoM se 'set' ke kuCa arWa Upara nikala kara Awe hEM.
;'bETAnA','jadZanA','CuAnA','jamAnA','raKanA' Ora 'aswa_honA' Axi arWa paraspara sambanXiwa lagawe hEM.
;
;anwarnihiwa_sUwra ;
;
;			bETAnA=jamAnA
;                          |
;                |---------|------------|
;                |         |            |
;	(nIce_kI_ora_jAnA) xqDZa_banAnA   (bETAne kA sWAna)
;                |         |            |
;                |         |           (sWAna para)
;            aswa_honA   niSciwa_hojAnA |----|------|
;                                    |    |      |
;                                  raKanA  CuAnA  jadZanA
;                                    |
;                                    |
;                           (eka_sAWa_kAma_AnevAlI_cIjZoM_ko_eka_sWAna_para raKanA)
;                                    | 
;                              (EsI_cIjZoM_kA_samUha)
;                                    |
;                                   seta
;
;sUwra : jamAnA^seta         
