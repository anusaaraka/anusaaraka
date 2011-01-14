
(defrule free0
(declare (salience 5000))
(id-root ?id free)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 bed)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  free.clp 	free0   "  ?id "  KAlI )" crlf))
)

(defrule free1
(declare (salience 4900))
(id-root ?id free)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svawaMwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  free.clp 	free1   "  ?id "  svawaMwra )" crlf))
)

(defrule free2
(declare (salience 4800))
(id-root ?id free)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  free.clp 	free2   "  ?id "  mukwa )" crlf))
)

(defrule free3
(declare (salience 4700))
(id-root ?id free)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 wheel)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mukwa_rUPa_se_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " free.clp	free3  "  ?id "  " ?id1 "  mukwa_rUPa_se_calA  )" crlf))
)

(defrule free4
(declare (salience 4600))
(id-root ?id free)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 wheel)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mukwa_rUPa_se_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " free.clp	free4  "  ?id "  " ?id1 "  mukwa_rUPa_se_calA  )" crlf))
)

(defrule free5
(declare (salience 4500))
(id-root ?id free)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  free.clp 	free5   "  ?id "  mukwa_kara )" crlf))
)

;default_sense && category=verb	nikAla	0
;"free","V","1.nikAlanA"
;It took the rescuers two hours to free the people from the debris.
;--"2.mukwa_karanA"
;Physical exercises can free your body && mind of tension.
;--"3.kisI_viSeRa_kAraNa_ke_lie_anumawi_xenA"
;The A.P. government intends to free more funds for educational purpose.
;--"4.svawaMwrawA_xenA"
;Winning the contest has freed her to take full-time practice.
;
;
;LEVEL 
;
;
;                    free   sUwra (nibanXa)
;                    ---- 
;
;"free","Adj","1.svawaMwra"
;The slaves were set free.
;We belong to a free nation.
;--"2.DZIlA"          -------- < svawanwra
;One end of the rope is free.
;--"3.mukwa_karanA"     ------ < mukwa_honA < svawanwra
;Thousands of prisoners have been set free.
;
;--"4.binA_mUlya_ke"     ----  < mUlya se mukwa_honA < svawanwra          
;He got free tickets for the magic show.
;--"5.KAlI"        ------ < vyaswa_na_honA < mukwa_honA < svawanwra_rUpa_se
;The bathroom is free now.
;I tried to telephone her but her line was never free.
;--"6.svecCA_se_xene_ko_wawpara"  ----< svawanwrawA(binA_kisI_ke_niyanwraNa)_se
;                                           xenA < svawanwrawApUrvaka
;Her brother is always free with a piece of advice for everybody.
;--"7.sabake_sAWa_sImA_se_aXika_Kula_jAnA"  --- < Kula_jAnA < mukwa_honA < svawanwra
;No one likes Hindi lecturer,she is too free in her language && behaviour.
;
;"free","Adv","1.muPwa/binA_mUlya_ke" --- < svawanwrawA(binA_kisI_ke_niyanwraNa)
;                                      se_xenA < svawanwra 
;Children under five usually travel free on buses && trains.
;Beauty parlour lady cuts my hair for free.
;--------------------------------------------------------------
;
;sUwra: muPwa[>svawanwra`]
;--------------------
;
;vyAKyA :
;upariliKiwa saBI vAkyoM meM svawanwrawA ke BAva ko sUwra-rUpa meM anwarnihiwa xeKA
;jA sakawA hE .  
;--- isa Sabxa ke viswAra ko upariliKiwa vAkyoM ke AXAra para isa prakAra
;    samaJA jA sakawA hE--
;
;-- svawanwra se wAwparya apane wanwra se honA samaJA jAwA hE . 
;
;-- svawanwra hone meM kisI BI prakAra kI aXInawA va JaMJata AxiyoM se mukwa samaJA jAwA 
;   hE . isase mukwa hone ke BAva meM aMgrejI meM kriyAoM ke hone kA BAva karane  
;   meM sAmAnyawaH parivarwiwa howA hE . awaH mukwa karane ke arWa meM .
; 
;-- mukwa hone se wAwparya hara prakAra ke niyamoM va mUlyoM se samaJA jAkara binA 
;   mUlya ke(muPwa) hone ke rUpa meM parivarwana .
; 
;-- mukwa hone se KAlI samaJA jA sakawA hE . kAraNa- mukwa honA kAryoM se BI 
;   howA hE . binA kisI kAma kA honA KAlI honA hI howA hE . 
;
;-- svawanwra se svawanwrawA se xene ke arWa meM parivarwana socA jA sakawA hE . 
;   svawanwrawA se xene kA mawalaba binA kisI ke niyanwraNa se xenA howA hE 
;   Ora yahI svecCA se xenA howA hE .
;
;-- svawanwra honA arWAw isase pahale jina niyamoM va jinake aXikAra meM We,
;   unase mukwi . arWAw unake banXanoM se mukwa ho jAnA yA Kula jAnA 
;   isase Kula jAnA samaJA jA sakawA hE .  
;
;
