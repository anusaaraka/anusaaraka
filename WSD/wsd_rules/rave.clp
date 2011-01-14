
(defrule rave0
(declare (salience 5000))
(id-root ?id rave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id raving )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pralApI_asAXAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rave.clp  	rave0   "  ?id "  pralApI_asAXAraNa )" crlf))
)

;"raving","Adj","1.pralApI_asAXAraNa"
;Her daughters are all raving beauties. 
;
(defrule rave1
(declare (salience 4900))
(id-root ?id rave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awipraSaMsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rave.clp 	rave1   "  ?id "  awipraSaMsA )" crlf))
)

;"rave","Adj","1.awipraSaMsA"
;The music concert got rave reviews in the papers.
;
(defrule rave2
(declare (salience 4800))
(id-root ?id rave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnaxAra_pArtI_nqwya_Axi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rave.clp 	rave2   "  ?id "  jAnaxAra_pArtI_nqwya_Axi )" crlf))
)

;"rave","N","1.jAnaxAra_pArtI_nqwya_Axi"
;Youngesters enjoyed the all-night raves. 
;
(defrule rave3
(declare (salience 4700))
(id-root ?id rave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rave.clp 	rave3   "  ?id "  baka )" crlf))
)

;"rave","VI","1.bakanA{besira_pEra_kI}"
;The patient with a high fever began to rave.
;--"2.kroXiwa_hokara_bAwa_karanA"
;When he was accused of stealing,he raved wildly.   
;--"3.praSaMsA_karanA"
;Everyone is raving about her latest film,'The God Mother'
;
;LEVEL 
;Headword : rave
;
;
;Examples --
;
;"rave","VI","1.pralApa_karanA{bakanA}"
;The patient with a high fever began to rave.
;wejZa buKAravAlA marIjZa pralApa_karane lagA.
;When he was accused of stealing, he raved wildly.
;jaba usake Upara corI karane kA Aropa lagAyA gayA wo vaha gusse meM pAgaloM jEse pralApa karane lagA
;--"3.praSaMsA_karanA{pAgaloM_jEse}"
;Everyone is raving about her latest film,"The God Mother"
;hara_koI usakI axyawana Pilma 'xi gOYdamaxara' kI praSaMsA kara rahA hE.
;
;"rave","N","1.jZoraxAra_pArtI_nqwya_Axi"
;Youngesters enjoyed the all-night raves.
;kama_umra ke logoM ne rAwaBara kI joraxAra pArtI kA Ananxa uTAyA.
;
;"rave","Adj","1.awipraSaMsAwmaka"
;The music concert got rave reviews in the papers.
;aKabAroM meM saMgIwa sammelana kI awipraSaMsAwmaka samIkRAez huIM.
;
;Upara xiye uxAharaNoM se EsA lagawA hE ki 'rave' Sabxa kA mUla arWa 
;'pralApa_karanA' hE. pralApa karane kA arWa huA binA soce samaJe anargala bolanA. 
;yaha sWiwi 'awyaXika kroXa' aWavA 'awyaXika KuSI' xonoM hI parasWiwiyoM
;meM ho sakawI hE. awaH 'rave' meM praSaMsA Ora pralApa xonoM hI arWa A jAwe
;hEM. isakA anwarnihiwa sUwra nimna hogA -
;
; anwarnihiwa sUwra ;
;
;                pralApa_karanA
;                   |
;            |-------------|
;      kroXa_meM |         | KuSI_meM
;            |             |
;          bakanA           praSaMsA_karanA{pAgaloM_jEse} 
;
;
;sUwra : pralApa_karanA[>praSaMsA_karanA]
