
(defrule cast0
(declare (salience 5000))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id casting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sAxace_meM_DalI_vaswU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  cast.clp  	cast0   "  ?id "  sAxace_meM_DalI_vaswU )" crlf))
)

;given_word=casting && category=noun	$DalAI)

;"casting","N","1.DalAI"
;The casting of metals is done in Ramu's shop.
;--"2.kalAkAroM_kA_cunAva"
;I didn't like the casting in that movie.
;
;
(defrule cast1
(declare (salience 4900))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast1  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;He has cast off all his bad habits.
;usane apanI sArI burI AxaweM CodZa xIM
(defrule cast2
(declare (salience 4800))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast2  "  ?id "  " ?id1 "  uwAra  )" crlf))
)

;@@@ Added by Preeti(14-4-14)
;They cast off and headed out to sea.[usingenglish.com]
;unhoMne nAva_Kola xI Ora samuxra meM cale gaye.
(defrule cast15
(declare (salience 4800))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nAva_Kola_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast15  "  ?id "  " ?id1 "  nAva_Kola_xe  )" crlf))
)

;He cast off his jacket && plunged into the water.
;usane apanI jEketa uwArI Ora pAnI meM dubakI lagA xI
(defrule cast3
(declare (salience 4700))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Pazxe_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast3  "  ?id "  " ?id1 "  Pazxe_dAla  )" crlf))
)

;
;
(defrule cast4
(declare (salience 4600))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anacAhI_bAwoM_ko_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast4  "  ?id "  " ?id1 "  anacAhI_bAwoM_ko_uTA  )" crlf))
)

;
;
;(defrule cast5
;(declare (salience 4500))
;(id-root ?id cast)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 aside)
;(kriyA-aside_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id wyAga));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " cast.clp cast5 " ?id "  wyAga )" crlf)) 
;)

;$$$  Modified by Preeti(14-4-14)
;Parse Problem
;Casting modesty aside, she outlined the reason for her success. [Oxford Advanced Learner's Dictionary]
;safkoca wyAgawe_hue, usane usakI saPalawA ke liye kAraNa rUpareKA_AreKiwa kiyA.
(defrule cast6
(declare (salience 4450))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 aside)
;(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-root ?id1 modesty)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wyAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast6  "  ?id "  " ?id1 "  wyAga  )" crlf))
)

;@@@ Added by Preeti(12-4-14)
;He cast the newspaper aside impatiently. [Oxford Advanced Learner's Dictionary]
;usane aXIrawa se samAcArapawra Peka xiyA.
(defrule cast14
(declare (salience 4400))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 aside)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Peka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast14  "  ?id "  " ?id1 "  Peka_xe  )" crlf))
)

;$$$  Modified by Preeti(14-4-14)
;The whole cast performs brilliantly. [Oxford Advanced Learner's Dictionary]
;pUrA nAtaka_ke pAwra prawiBASAlI Dafga se kArya karawA hE.
;(declare (salience 4300));salience changed
(defrule cast7
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAtaka_ke_pAwra));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cast.clp 	cast7   "  ?id "  nAtaka_ke_pAwra )" crlf))
)


(defrule cast8
;(declare (salience 4200));salience changed
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cast.clp 	cast8   "  ?id "  dAla )" crlf))
)

;@@@ Added by Preeti(12-4-14)
;Her leg is in a cast. [Oxford Advanced Learner's Dictionary]
;usakI tAfga plAstara meM hE.
(defrule cast9
(declare (salience 4300))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id plAstara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cast.clp 	cast9   "  ?id "  plAstara )" crlf))
)

;@@@ Added by Preeti(12-4-14)
;He has an unusual cast of mind. [Oxford Advanced Learner's Dictionary]
;usakA mana asAmAnya prakAra kA hE.
(defrule cast10
(declare (salience 4400))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
(kriyA-object  ? ?id )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakAra_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cast.clp 	cast10   "  ?id "  prakAra_kA )" crlf))
)

;@@@ Added by Preeti(12-4-14)
;He cast himself as the innocent victim of a hate campaign. [Oxford Advanced Learner's Dictionary]
;usane svayaM ko GqNA aBiyAna ke nirxoRa pIdZiwa kI waraha  DAlA.
(defrule cast11
(declare (salience 4250))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 himself|herself)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cast.clp 	cast11   "  ?id "  DAla )" crlf))
)

;@@@ Added by Preeti(12-4-14)
;He has cast her as an ambitious lawyer in his latest movie. [Oxford Advanced Learner's Dictionary]
;usane usake sabase aXika navInawama calaciwra meM mahawvAkAfkRI vakIla kI waraha usako BUmikA xI hE.
(defrule cast12
(declare (salience 4200))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-as_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUmikA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cast.clp 	cast12   "  ?id "  BUmikA_xe )" crlf))
)
;@@@ Added by Preeti(12-4-14)
;She cast around desperately for a safe topic of conversation. [Oxford Advanced Learner's Dictionary]
;usane cinwiwa_hokara jalxI vArwAlApa ke eka uwwama viRaya KojA.
(defrule cast13
(declare (salience 4400))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about|around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)	
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cinwiwa_hokara_Koja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast13  "  ?id "  " ?id1 "  cinwiwa_hokara_Koja  )" crlf))
)

;@@@ Added by Preeti(12-4-14)
;They cast him out because of his behaviour. [usingenglish.com]
;unhoMne usake barwAva kI vajaha se usako bahiRkqwa kiyA.
(defrule cast16
(declare (salience 4400))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)	
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahiRkqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast16  "  ?id "  " ?id1 "  bahiRkqwa_kara  )" crlf))
)

;"cast","V","1.dAlanA"
;Only citizens of 18years && above can cast vote.
;--"2.nAtaka_kelie_cunanA"
;He was casted as Hamlet in the play.
;--"3.AkAra_xenA/banAnA"
;The statue of the poet was cast in silver.
;
;LEVEL 
;Headword : cast
;
;Examples --
;
;1. Don't cast that fishing net. It is torn.
;usa maCalI pakadZane kI jAla ko mawa dAlo. vaha PatI huI hE.   
;
;2. The trees cast their shadows on the still pond.
;pedZoM ne apanI paraCAiyAz usa sWira kuMda para dAlI.
;
;3. Let us cast our votes impartially.
;hama apane mawa niRpakRa BAva se dAla xe.
;
;4. They have cast her in the role of Juliet.
;unhoMne use jUliyata kI BUmikA meM dAlA hE.
;
;5. Hope that this play has a good cast. 
;umIxa hE ki isa nAtaka meM acCe pAwra dAle gae hEM.
;
;6. Snakes cast their skin.
;sAzpa apanI KAla (dAlawe)PeMkawe hEM.
;
;7. We bought the statue cast in brass.
;hamane pIwala meM DAlI huI murwi KarIxI.
;
;8. Pour the hot iron into the cast. 
;garama lohe ko sAzce meM uzdela xo.
;
;9. Cast the clay in the mould before it dries up.
;mittI sUKa jAe usase pahale use sAzce meM DZAla xo.
;
;uparaliKiwa vAkyoM meM "cast" Sabxa ke alaga-alaga saMxarBoM meM jo arWa A raheM hEM, ve uparI wOra se Binna xiKawe hEM, kinwu mUlawaH una saBI arWoM meM sambanXa hEM.
;
;vAkya 1 se vAkya 6 meM "cast" Sabxa kA arWa "dAlanA" EsA A rahA hE.
;kinwu vAkya 4 Ora 5 meM dAlane ke arWa meM viRiSta prakAra se dAle jAne kA BAva prakata ho rahA hE Ora vaha BAva hE DZAlane kA. jEse ki vAkya 4 meM kisI ko kisI BUmikA meM DZAlane kI bAwa ho rahI hE Ora vAkya 5 meM kisI BUmikA meM DZAle gae nAtaka ke pAwroM kI bAwa ho rahI hE. 
;
;vAkya 7 se 9 meM "cast" ke arWa spaRtawaH, DAlane se sambanZXiwa hEM. vAkya 7 meM "cast"  Sabxa, kA prayoga DZAlI gaI vaswu ke lie kiyA gayA hE. jaba ki vAkya 8 meM "cast" Sabxa kA prayoga sAzce, arWAwa vaha pAwra jisameM kuCa DZAlA jAwA hE, ke lie kiyA gayA hE Ora vAkya 9 meM "cast" Sabxa kA kriyA ki waraha prayoga kiyA gayA hE.
;
;wo aba hama "cast" Sabxa ke lie sUwra kuCa isa prakAra xe sakawe hEM :
; 
;anwarnihiwa sUwra ;
;dAlanA - DAlanA[DAlane_kI_kriyA] - DAlane_kA_pAwra - DAla_kara_wEyAra_kI_huI_vaswu
;
;sUwra : dAlanA^DAlanA[>sAzcA+]
;
;"cast","V","dAlanA-DAlanA"
;"cast","N","sAzcA-pAwra"
