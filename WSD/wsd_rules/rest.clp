
;Added by human
(defrule rest0
(declare (salience 5000))
(id-root ?id rest)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 eye)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Tahara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rest.clp 	rest0   "  ?id "  Tahara )" crlf))
)

(defrule rest1
(declare (salience 4900))
(id-root ?id rest)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SeRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rest.clp 	rest1   "  ?id "  SeRa )" crlf))
)

(defrule rest2
(declare (salience 100))
(id-root ?id rest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSrAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rest.clp 	rest2   "  ?id "  viSrAma )" crlf))
)

(defrule rest3
(declare (salience 100))
(id-root ?id rest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rest.clp 	rest3   "  ?id "  ArAma_kara )" crlf))
)

;@@@ Added by Anita-20.1.2014
;May her soul rest in peace.  [old clp sentence]
;उसकी आत्मा को शान्ति मिले ।
(defrule rest4
(declare (salience 4850))
(id-root ?id rest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
(id-root ?id1 peace)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnwi_mila))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rest.clp 	rest4   "  ?id "  SAnwi_mila )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  rest.clp      rest4   "  ?id " ko )" crlf)
)
)

;@@@ Added by Anita-20.1.2014
;He rested his head on a pillow. [old clp sentence]
;उसने अपना सिर तकिये पर टिकाया ।
(defrule rest5
(declare (salience 4950))
(id-root ?id rest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(id-root ?id1 pillow)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tikA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rest.clp 	rest5   "  ?id "  tikA )" crlf)
)
)

;@@@ Added by Anita-20.1.2014
;I will never rest until I know the truth. [old clp sentence]
;जब तक सच नहीं जान लूँगा तब तक मैं शान्त नहीं होऊँगा । 
(defrule rest6
(declare (salience 5050))
(id-root ?id rest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_niReXaka  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rest.clp 	rest6   "  ?id "  SAnwa_ho )" crlf)
)
)

;@@@ Added by Anita-20.1.2014
;India's hope of a gold medal rested on P.T.Usha. [old clp sentence]
;भारत की गोल्ड मेडल की आशा पी.टी. ऊषा पर निर्भर करती है ।
(defrule rest7
(declare (salience 5150))
(id-root ?id rest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 hope)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-root ?id2 medal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirBara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rest.clp 	rest7   "  ?id "  nirBara_kara )" crlf)
)
)



;@@@ Added by Anita-20.1.2014
;His eys rested on her face. [old clp sentence]  [tam problem] 
;उसकी आँखें उसके चेहरे पर टिक गयीं ।
(defrule rest8
(declare (salience 4000))
(id-root ?id rest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tika_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rest.clp 	rest8   "  ?id "  tika_jA )" crlf))
)

;@@@ Added by Anita-20.1.2014
;Let the Bofors case rest.  [old clp sentence] [4th parse]
;चलो बोफॉर्स मामले की कार्यवाही छोड़ दें ।
;I rest my case. 
; मैंने अपने मामले की कार्यवाही छोड़ दी ।
(defrule rest9
(declare (salience 5270))
(id-root ?id rest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-object  ?id ?id1)(kriyA-subject ?id ?id1))
(id-root ?id1 case)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryavAhI_CodZa_xe))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rest.clp 	rest9   "  ?id " kAryavAhI_CodZa_xe)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  rest.clp      rest9  "  ?id " kA )" crlf)
)
)

;@@@ Added by Anita-20.1.2014 
;Let this field rest for a year. [old clp sentence] [6th parse]
;चलो एक साल के लिए यह खेत खाली छोड़ दें ।
(defrule rest10
(declare (salience 5250))
(id-root ?id rest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(viSeRya-det_viSeRaNa  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI_CodZa_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rest.clp 	rest10   "  ?id "  KAlI_CodZa_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  rest.clp      rest10  "  ?id " ko )" crlf))
)

;@@@ Added by Anita-20.3.2014
;In the simpler case when charges are at rest the force is given by Coulombs law attractive for unlike ;charges and repulsive for like charges. [ncert]
;सरल प्रकरण में, जब आवेश विरामावस्था में होते हैं, तो इस बल को कूलॉम - नियम द्वारा व्यक्त किया जाता है: "सजातीय आवेशों में ;प्रतिकर्षण तथा विजातीय आवेशों में आकर्षण"
(defrule rest11
(declare (salience 5350))
(id-root ?id rest)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id virAmAvasWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rest.clp 	rest11   "  ?id "  virAmAvasWA )" crlf))
)

;"rest","VTI","1.ArAma_karanA"
;He is tired & he is resting now.
;--"2.SAnwi_praxAna_karanA"   
;May her soul rest in peace.  
;--"3.teka_para_raKanA"   
;He rested his head on a pillow. 
;--"4.suswAnA"    
;I will never rest until I know the truth.
;--"5.kisI_para_nirBara_rahanA"   
;India's hope of a gold medal rested on P.T.Usha.
;--"6.GUra_kara_xeKanA"    
;His eys rested on her face.
;--"7.kAryavAhI_CodZa_xenA"   
;Let the Bofors case rest.
;I rest my case. 
;--"8.Kewa_KAlI_CodZa_xenA"    
;Let this field rest for a year.
;
;
;LEVEL 
;
;
;                 sUwra (nibanXa)
;
;"rest","N","1.viSrAma"
;Sunday is a day of rest for many.
;--"2.teka/sahArA"      ------ < viSrAma
;                       (viSrAma meM isakI AvaSyakawA)
;An arm rest.
;A rest for a telephone receiver.
;--"3.virAma"   ----------- < viSrAma
;                  (--ke samaya anya kAryoM ko virAma lagawA hE)
;The trumpets have six bar's rest.
;--"4.gawihIna"  ------- < viSrAma
;                 (--ke samaya gawihInawA howI hE)
;The football is lying at rest in the field.
;
;--"5.xaPanAnA" ------ < viSrAma
;        (mqwa vyakwi ko sampUrNa viSrAma meM gayA huA mAnA jAwA hE)
;The king was laid to rest beside her late Queen.
;
;"rest","N","1.SeRa"  ----- < viSrAma
;     (--ke samaya saBI kAryoM ko SeRa raKA jAwA hE)                
;Eat what you wish && leave the rest.
;He did the rest of the work.
;
;"rest","VTI","1.ArAma_karanA"  
;He is tired && he is resting now.
;--"2.SAnwi_praxAna_karanA" -------- < SAnwi kA milanA < viSrAma
;           (viSrAma se SAnwi milawI hE)
;May her soul rest in peace.
;--"3.teka_para_raKanA"  --------- < teka kI AvaSyakawA < viSrAma
;         (viSrAma meM kisI ko AXAra banAyA jAwA hE)
;He rested his head on a pillow.
;
;--"4.suswAnA"  ------ < viSrAma
;I will never rest until I know the truth.
;--"5.kisI_para_nirBara_rahanA"   ------- < AXAra < viSrAma
;          (--meM kisI ko AXAra banAyA jAwA hE,usase nirBarawA)
;India's hope of a gold medal rested on P.T.Usha.
;--"6.GUra_kara_xeKanA"   ------ < tikanA < viSrAma
;      (--se kisI para tikanA <--GUrane meM kisI para najara kA tikanA)
;His eys rested on her face.
;--"7.kAryavAhI_CodZa_xenA"  ---- < viSrAma
;        (---meM kiye jAwe hue kriyA ko CodA jAwA hE)
;Let the Bofors case rest.
;I rest my case.
;--"8.Kewa_KAlI_CodZa_xenA"   ---- < viSrAma
;      (pahale prAyaH saBI KewI kare We,---ke samaya Kewa KAlI CodA jAwA WA)
;Let this field rest for a year.
;--------------------------------------------------------
;
;sUwra : viSrAma`
;--------
;
;arWa-viswAra ke saMGaTaka sUwra--
;-- pUrA arWa-viswAra viSrAma se hI huA hE . viSrAma meM sAXana ke rUpa meM 
;prayukwa vaswuoM ke rUpakoM xvArA, viSrAma meM honevAlI kriyAoM xvArA, 
;viSrAma se praBAviwa vaswuoM va kriyAoM ke AXAra para arWa-viswAra ko xeKA jA 
;sakawA hE .
;-- Upara kI tippaNiyoM xvArA waWya spaRta howe hEM . 
;-- anya BARAoM meM BI isa prakAra ke prayoga sAmAnya hEM . jEse-
;  --Kewa KAlI CodanA yA kAryavAhI Codane ke sanxarBa meM-
;praSna- kAma nahIM ho rahA hE kyA ? yA are Kewa KAlI kEse xIKa rahA hE ?
;uwwara- karmacArI, kisAna yA majaxUra ArAma ParamA(kara) rahe hEM .
;           yA Kewa ko KAlI xeKakara-
;   kisAna ArAma kara rahA hE . 
;Ese prayoga Ama hEM .
; anya sanxarBoM ko BI isI waraha samaJA jA sakawA hE .
;
