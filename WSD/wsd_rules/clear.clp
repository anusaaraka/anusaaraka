
(defrule clear0
(declare (salience 5000))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id clearing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nikAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  clear.clp  	clear0   "  ?id "  nikAsI )" crlf))
)

(defrule clear1
(declare (salience 4900))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cale_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear1  "  ?id "  " ?id1 "  cale_jA  )" crlf))
)

;Clear off && leave me alone!
;cale jAo Ora muJe akelA CodZa xo
(defrule clear2
(declare (salience 4800))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KAlI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear2  "  ?id "  " ?id1 "  KAlI_kara  )" crlf))
)

;My landlord has given me a week to clear out of my flat.
;mere makAnamAlika ne muJe Gara KAlI karane ke lie eka haPwA(kA samaya) xiyA hE
(defrule clear3
(declare (salience 4700))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAPa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear3  "  ?id "  " ?id1 "  sAPa_kara  )" crlf))
)

;She has cleared out the whole kitchen today morning. 
;usane Aja subaha pUrI rasoI sAPa kara xI
(defrule clear4
(declare (salience 4600))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 svasWa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear4  "  ?id "  " ?id1 "  svasWa_ho  )" crlf))
)

;I'll give you some medicine which should clear you up very quickly.
(defrule clear5
(declare (salience 4500))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 svacCa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear5  "  ?id "  " ?id1 "  svacCa_kara  )" crlf))
)

;Can you clear up the kitchen?
;kyA wuma rasoI sAPa kara sakawe ho ?
(defrule clear6
(declare (salience 4400))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hatA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear6  "  ?id "  " ?id1 "  hatA_le  )" crlf))
)

(defrule clear7
(declare (salience 4300))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hatA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear7  "  ?id "  " ?id1 "  hatA_le  )" crlf))
)

(defrule clear8
(declare (salience 4200))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear8  "  ?id "  " ?id1 "  BAga_jA  )" crlf))
)

(defrule clear9
(declare (salience 4100))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear9  "  ?id "  " ?id1 "  BAga_jA  )" crlf))
)

(defrule clear10
(declare (salience 4000))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear10  "  ?id "  " ?id1 "  bAhara_nikAla  )" crlf))
)

(defrule clear11
(declare (salience 3900))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear11  "  ?id "  " ?id1 "  bAhara_nikAla  )" crlf))
)

(defrule clear12
(declare (salience 3800))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sulaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear12  "  ?id "  " ?id1 "  sulaJA  )" crlf))
)

(defrule clear13
(declare (salience 3700))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sulaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear13  "  ?id "  " ?id1 "  sulaJA  )" crlf))
)

(defrule clear14
(declare (salience 3600))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clear.clp 	clear14   "  ?id "  spaRta )" crlf))
)

(defrule clear15
(declare (salience 3500))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear15  "  ?id "  " ?id1 "  BAga_jA  )" crlf))
)

(defrule clear16
(declare (salience 3400))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clear.clp	clear16  "  ?id "  " ?id1 "  BAga_jA  )" crlf))
)

(defrule clear17
(declare (salience 3300))
(id-root ?id clear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAPa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clear.clp 	clear17   "  ?id "  sAPa_kara )" crlf))
)

;default_sense && category=verb	hata	0
;"clear","V","1.hatanA"
;The sky was cleared of clouds after the storm.
;--"2.sAPa_karanA"
;After lunch clear the table.
;--"3.xoRa_mukwa_karanA"
;The lawyer tried to show his client to be clear.
;--"4.nirxoRa_TaharAnA"
;The culprit was cleared of all the charges.
;--"5.nikAsa_karanA"
;Cheques take three business days to clear.
;--"6.cukawA_karanA"
;He cleared all his debts before passing away.
;
;
;LEVEL 
;Headword : clear
;
;
;Examples --
;
;Adj.
;
;--"1.spaRta{xeKane yA sunane meM}"
;The line of the lion's footprints was very clear
;Sera ke pEroM ke niSAnoM kI lAina bahuwa spaRta WI
;Rita has a clear voice.
;rIwA kI AvAjZa spaRta hE
;--"2.samaJane meM AsAna/spaRta kaWana" 
;You will finish your work in time, is that clear?
;wuma apanA kAma samaya para samApwa karoge, spaRta hE na?
;Rita's arguments are very clear.
;rIwA ke warka bahuwa spaRta hEM
;--"3.sAPa{pAraxarSI}" 
;Water is so clear that you can see the life inside the sea.
;pAnI iwanA sAPa hE ki samuxra ke anxara kA jIvana xiKawA hE
;--"4.sAPa{binA kisI bAXA ke}"
;We can have a clear view of the stage,even from the back.
;pICe se BI hamako steja sAPa xiKAI xe sakawI hE
;--"5. sAPa_honA{mukwa honA aparAXaboXa/qNa iwyAxi se}" 
;Madhu's conscience is absolutely  clear 
;maXu kA mana bilkula sAPa hE
;You  are now clear of  all debts.
;wuma aba saba qNoM se mukwa ho
;--"6. kisI cIjZa se xUra yA hatakara" 
;The President's car moved till it was clear of the crowd 
;presidenta kI kAra baDZawI gayI jaba waka vaha BIdZa se xUra nahIM ho gayI
;
;Adv.
;
;--"1.sAPa/spaRta" 
;Her voice is loud && clear.
;usakI AvAjZa UzcI Ora spaRta hE
;He managed to escape clear out of the burning house.
;vaha jalawe hue makAna se sAPa baca nikalA
;The accused got clear away.
;aBiyukwa sAPa baca gayA
;--"2.niravaroXa"
;He climbed clear up to the top of the mountain.
;vaha binA kisI bAXA ke pahAdZa kI cotI waka caDZa gayA
;
;V.
;
;--"1.sAPa_honA/pAraxarSI_honA" 
;The sky  cleared after the storm.
;wUPAna ke bAxa AsamAna sAPa ho gayA
;Please clear the table after the meal.
;KAne ke bAxa kqpayA mejZa sAPa kara xenA
;Clear papers off the desk.
;mejZa para se kAgajZa hatA xo
;--"2.nirxoRa_sixXa_karanA" 
;Throughout his arguement, he fought to clear his name.
;apane warka meM barAbara vaha apanA nAma bacAne ke liye ladZA
;--"3.baca_kara_nikala_jAnA{spaRta_rUpa_se_[ho_jAnA/kara_lenA]}"
;The horses cleared the gap easily.
;GodZoM ne xarAra AsAnI se pAsa kara lI
;Go && clear your goods through customs.
;jAo Ora kastama se apanA sAmAna CutavA Ao
;She's been cleared by the security.
;surakRA{bala} ne usako CodZa xiyA
;--"4.uXAra_cukAnA{hisAba_spaRta_karanA}"
;I have cleared all my debts after a long time.
;bahuwa samaya bAxa mEMne apane saba uXAra cukA xiye hEM
;
;anwarnihiwa sUwra vyAKyA ke sAWa ;
;
;ukwa uxAharaNoM kI vyAKyA nimnaprakAra se kI jA sakawI hE --
;
;a. xeKane sunane Ora samaJane meM AsAna howI hE samaJane meM AsAna samaJa meM AnA - usake bAre meM koI saMxeha na bacanA-spaRta 
;uxAharaNa:
;Rita has a clear voice--rIwA kI spaRta AvAjZa hE-- vaha jo kahawI hE vaha spaRta sunAI xewA hE
;
;b. usake bAre meM koI galawaPahamI na ho pAye-galawaPahamI se koI saMxeha na ho-- spaRta ho
;c. jisake bAre meM koI saMxeha na ho-asaMxigXa-spaRta
;d. pAraxarSI--jisase ArapAra xiKAI xe--xeKawe samaya maXya meM bAXA na Aye--bAXA kA saMxeha na ho--spaRta+ 
;e. vaha bAXAmukwa howA hE-- spaRta+ 
;f. usameM koI avAzcCiwa vaswu nahIM howI--vaha spaRta+ howA hE
;
;'clear' jaba kriyA rUpa meM AwA hE wo usameM `spaRtawA' ke BAva ke sAWa koI na koI kriyA BAva howA hE. awaH anusAraka meM vaha `spaRta_*' liKA jAegA jahAz `*' saMxarBa anusAra pATaka uciwa kriyA lagA legA. awaH isakA sUwra 'spaRta`' ho sakawA hE.
;yA 'sAPa-'
;
;sUwra : spaRta`
;
;
;*spaRta
;`spaRta' Sabxa `spaR' XAwu se banA hE. `spaR' XAwu kA arWa hE `saMxeha_na_honA'
;awaH spaRta kA arWa huA `asaMxigXa' 
