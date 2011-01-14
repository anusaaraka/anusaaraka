
(defrule advantage0
(declare (salience 5000))
(id-root ?id advantage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PAyaxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advantage.clp 	advantage0   "  ?id "  PAyaxA )" crlf))
)

;"advantage","N","1.PAyaxA"
;Raju took full advantage of shopping.
;--"2.baDZawa"
;Her knowledge of several languages gave her an advantage over her competitors.
;--"3.BalAI"
;Is there any advantage in our following the traditional festivals in this 21st century.
;--"4.edavAMteja{tEnisa_ke_kela_meM_dyusa_uparAMwa_arjiwa_pahalA_pvAiMta}"
;Mahesh Bhupati reached advantage point quite easily.
;--"5.pUrA_lABa_uTAnA"
;A basketball player should take advantage of his height.
;--"6.galawa_PAyaxA_uTAnA"
;He took advantage of her trust by keeping her in the dark about the deal.
;
(defrule advantage1
(declare (salience 4900))
(id-root ?id advantage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA_PAyaxA_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advantage.clp 	advantage1   "  ?id "  pUrA_PAyaxA_uTA )" crlf))
)

;"advantage","V","1.pUrA_PAyaxA_uTAnA"
; He advantaged his classmates by solving their problems. 
;
;LEVEL 
;
;
;"advantage","N","1.baDZawa"<--lABa
;Her knowledge of several languages gave her an advantage over her competitors.
;usakI bahuwa sI BARAoM ke jFAna se usane apane prawixvanxvI para baDZawa hAsila kara lI. 
;--"2.PAyaxA"<--lABa
;Raju took full advantage of free staying in the guest house.
;rAjU ne niHSulka gesta hAusa meM Taharane kA pUrA PAyaxA uTAyA.
;--"3.lABa"<--lABa
;Is there any advantage in our traditional festivals in this 21st century.
;ina pAramparika wyohAroM kA isa ikkIsavIM saxI meM kyA koI lABa hE?
;
;--"3.edavAMteja{tEnisa_ke_Kela_meM_dyusa_uparAMwa_arjiwa_pahalA_pvAiMta}"<--lABa
;Mahesh Bhupati reached advantage point quite easily.
;maheSa BUpawi ko bahuwa AsAnI se dyusa pvAiMta kA lABa milA.
;
;--"4.pUrA_lABa_uTAnA"<--lABa
;A basketball player should take advantage of his height.
;eka bAsketabAla KilAdZI ko apanI lambAI kA pUrA lABa uTAnA cAhiye.
;
;--"5.anuciwa_PAyaxA_uTAnA"<--lABa
;He took advantage of her trust by keeping her in the dark.
;usane usake viSvAsa kA (anuciwa) lABa uTAyA,use azXere meM raKa kara.
;
;"advantage","V","1.pUrA_PAyaxA_uTAnA"<--lABa
;He took full advantage of her friendship. 
;usane usakI xoswI kA pUrA PAyaxA uTAyA.
;
;       nota:--uparyukwa 'advantage'ke saBI vAkyoM ko xeKane para    
;           hama isa niRkarRa para pahuzca sakawe hEM ki isa Sabxa kA arWa
;          kevala eka hI arWa se nikAlA jA sakawA hE awaH isake liye
;          sUwra nimna xe sakawe hEM
;                  
;sUwra : lABa
; 
;
