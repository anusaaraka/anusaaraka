
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
(declare (salience 4800))
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
(declare (salience 4700))
(id-root ?id rest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rest.clp 	rest3   "  ?id "  ArAma_kara )" crlf))
)

;"rest","VTI","1.ArAma_karanA"
;He is tired && he is resting now.
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
