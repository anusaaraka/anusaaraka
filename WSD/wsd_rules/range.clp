
(defrule range0
(declare (salience 5000))
(id-root ?id range)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMkwi_SrqMKalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  range.clp 	range0   "  ?id "  paMkwi_SrqMKalA )" crlf))
)

;"range","N","1.paMkwi_SrqMKalA"
;She has seen the beautiful mountain range 
;--"2.SreNI"
;The whole range of new stock of readymade garments has arrived in the market
;--"3.sImA"
;It is difficult to find a good house within our price range.  
;--"4.baMxUka_kI_xUrI_jahAz_waka_vaha_mAra_sakawI_hE"
;The gun has a range of five miles.     
;--"5.sImAeM_parisara"
;The range of prices for steel is from Rs.85 to Rs100. 
;
(defrule range1
(declare (salience 4900))
(id-root ?id range)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kawAra_meM_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  range.clp 	range1   "  ?id "  kawAra_meM_bAzXa )" crlf))
)

;"range","VTI","1.kawAra_meM_bAzXanA"
;The scouts ranged themselves along the route of the procession.  
;--"2.xo_sImAoM_me_baxalanA"
;The price of wheat ranges from 180 to 250 rupees a quintal
;--"3.mAra_kara_sakanA"
;This gun ranges over six miles.
;--"4.carane_ke_liye_paSuoM_ko_CodZa_xenA"
;Cattle are ranging over the plains. 
;
