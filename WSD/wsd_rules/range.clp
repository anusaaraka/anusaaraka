;@@@ Added by Anita-31.1.2014
;Kennett embodied in one man an unusual range of science, music and religion. [by mail sentence]
;कैनेट एक आदमी में विज्ञान, संगीत और धर्म की असाधारण श्रेणी सन्निहित है ।
(defrule range2
(declare (salience 4800))
(id-root ?id range)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SreNI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  range.clp 	range2   "  ?id " SreNI )" crlf))
)

;Commenting this Rule to get the meaning of 'mountain range' as 'parvawa_SreNI'. Suggested by Chaitanya Sir. 
;;Added by Anita-7.2.2014
;;She has seen the beautiful mountain range . 
;;उसने सुन्दर पर्वत श्रेणी को देखा है । [ verified sentence]
;(defrule range3
;(declare (salience 4900))
;(id-root ?id range)
;?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 mountain)
;(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
;(id-cat_coarse ?id noun)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id SreNI))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  range.clp 	range3   "  ?id " SreNI)" crlf))
;)

;@@@ Added by Anita-8.2.2014
;It is difficult to find a good house within our price range.  [old clp sentence]
;हमारी मूल्य सीमा में एक अच्छे घर को पाना मुश्किल है । [ verified sentence]
(defrule range4
(declare (salience 5000))
(id-root ?id range)
?mng <-(meaning_to_be_decided ?id)
(kriyA-within_saMbanXI  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  range.clp 	range4   "  ?id " sImA)" crlf))
)

;@@@ Added by Anita-8.2.2014
;The gun has a range of five miles.   [old clp sentence] 
;बन्दूक की मार करने की क्षमता पाँच मील है ।
(defrule range5
(declare (salience 4700))
(id-root ?id range)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAra_karane_kI_kRamawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  range.clp 	range5   "  ?id " mAra_karane_kI_kRamawA)" crlf))
)

;@@@ Added by Anita-10.2.2014
;The range of prices for steel is from Rs. 85 to Rs. 100. [old clp sentence]
;इस्पात की कीमतों का सीमा परिसर  85 रूपये से 100 रूपये है ।
(defrule range6
(declare (salience 4750))
(id-root ?id range)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 price|value|cost)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImA_parisara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  range.clp 	range6   "  ?id " sImA_parisara)" crlf))
)

;@@@ Added by Anita-3.3.2014 [ncert.]
;Their investigations based on scientific processes range from particles that are smaller than atoms in ;size to stars that are very far away.
;उनके वैज्ञानिक प्रक्रियाओं पर आधारित अनुसन्धान अणुओं से छोटे से लेकर सुदूर तारों तक प्रसृत  हैं ।
(defrule range7
(declare (salience 4950))
(id-root ?id range)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
(id-root ?id1 particle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasqwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  range.clp 	range7   "  ?id " prasqwa_ho)" crlf))
)

;@@@ Added by Anita--5.3.2014
;The masses of the objects we come across in the universe vary over a very wide range. [By mail]
;विश्व में हम जो पिण्ड देखते हैं, उनके द्रव्यमानों में अन्तर का एक अत्यन्त विस्तृत परिसर है ।
(defrule range8
(declare (salience 4850))
(id-root ?id range)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 wide)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parisara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  range.clp 	range8   "  ?id " parisara)" crlf))
)

;###################################default-rule############################
;"range","N","1.paMkwi_SrqMKalA"
;She has seen the beautiful mountain range 
(defrule range_default-rule
(id-root ?id range)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMkwi_SrqMKalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  range.clp 	range_default-rule   "  ?id "  paMkwi_SrqMKalA )" crlf))
)

;"range","VTI","1.kawAra_meM_bAzXanA"
;The scouts ranged themselves along the route of the procession.  
(defrule range1
(declare (salience 4700))
(id-root ?id range)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kawAra_meM_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  range.clp 	range1   "  ?id "  kawAra_meM_bAzXa )" crlf))
)

;Old Examples
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
;--"2.xo_sImAoM_me_baxalanA"
;The price of wheat ranges from 180 to 250 rupees a quintal
;--"3.mAra_kara_sakanA"
;This gun ranges over six miles.
;--"4.carane_ke_liye_paSuoM_ko_CodZa_xenA"
;Cattle are ranging over the plains. 
;


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_range8
(declare (salience 4850))
(id-root ?id range)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 wide)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parisara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " range.clp   sub_samA_range8   "   ?id " parisara)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_range8
(declare (salience 4850))
(id-root ?id range)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 wide)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parisara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " range.clp   obj_samA_range8   "   ?id " parisara)" crlf))
)
