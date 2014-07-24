
(defrule trail0
(declare (salience 5000))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-away_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_kI_AvAja_kA_XIre_XIre_kama_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " trail.clp trail0 " ?id "  kisI_kI_AvAja_kA_XIre_XIre_kama_ho )" crlf)) 
)

(defrule trail1
(declare (salience 4900))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-away_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_kI_AvAja_kA_XIre_XIre_kama_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " trail.clp trail1 " ?id "  kisI_kI_AvAja_kA_XIre_XIre_kama_ho )" crlf)) 
)

(defrule trail2
(declare (salience 4800))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-away_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_kI_AvAja_kA_XIre_XIre_kama_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " trail.clp trail2 " ?id "  kisI_kI_AvAja_kA_XIre_XIre_kama_ho )" crlf)) 
)

(defrule trail3
(declare (salience 4700))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_kI_AvAja_kA_XIre_XIre_kama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trail.clp	trail3  "  ?id "  " ?id1 "  kisI_kI_AvAja_kA_XIre_XIre_kama_ho  )" crlf))
)

(defrule trail4
(declare (salience 4600))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICe_pICe_Gisata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trail.clp 	trail4   "  ?id "  pICe_pICe_Gisata )" crlf))
)


;@@@ Added by Prachi Rathore[11-2-14]
;The trail had gone cold.[oald]
;रास्ता ठण्डा हो गया है. 
(defrule trail5
(declare (salience 4600))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAswA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trail.clp 	trail5   "  ?id "  rAswA )" crlf))
)

;@@@ Added by Prachi Rathore[11-2-14]
;The hurricane left the trail of destruction behind it.[sentence from this file]
;wUPAna apane pICe barabAxI ke niSAna CodZa gayA hE.
(defrule trail6
(declare (salience 5000))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trail.clp 	trail6   "  ?id "  niSAna )" crlf))
)


;@@@ Added by Prachi Rathore[11-2-14]
;His voice trailed off as he saw the look on her face.[cambridge]
;उसकी आवाज धीमी हुई जैसे ही उसने उसके चेहरे पर भाव को देखा . 
(defrule trail7
(declare (salience 4700))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id2)
(id-root ?id2 voice)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XImI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trail.clp	trail7  "  ?id "  " ?id1 "  XImI_ho  )" crlf))
)


;@@@ Added by Prachi Rathore[11-2-14]
;He had tears trailing down his cheeks.[oald]
; उसके गाल पर  आँसू लुडक  रहे थे. 
(defrule trail8
(declare (salience 4700))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ludaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trail.clp	trail8  "  ?id "  " ?id1 "  ludaka  )" crlf))
)



;@@@ Added by Prachi Rathore[11-2-14]
;The kids trailed around after us while we shopped for clothes.[oald]
;बच्चे हमारे पीछे मंडरा रहे थे जब  हम वस्त्र खरीद रहे थे   . 
(defrule trail9
(declare (salience 4700))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 maMdarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trail.clp	trail9  "  ?id "  " ?id1 "  maMdarA  )" crlf))
)

;@@@ Added by Prachi Rathore[11-2-14]
;The tired students trailed along behind their teachers.[sentence from this file]
;Wake huye vixxAyArWI apane aXyApakoM ke sAWa pICe Gasitawe huye cala rahe hEM.
(defrule trail10
(declare (salience 4700))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gasitawe_huye_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trail.clp	trail10  "  ?id "  " ?id1 " Gasitawe_huye_cala  )" crlf))
)

;@@@ Added by Prachi Rathore[11-2-14]
;Ivy is trailing over the walls.[sentence from this file]
;AivI xIvAroM ke Upara saba ora PEla gayI hE.
(defrule trail11
(declare (salience 4700))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(kriyA-over_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trail.clp 	trail11   "  ?id "  PEla )" crlf))
)


;@@@ Added by Prachi Rathore[11-2-14]
;Farmers have made the trails through paddy fields  [sentence from this file]
;kisAnoM ne XAna ke KewoM ke bIca se pagadandiyAz banA lI hEM
(defrule trail12
(declare (salience 4700))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-through_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pagadandI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trail.clp 	trail12  "  ?id "  pagadandI )" crlf))
)

;@@@ Added by Prachi Rathore[11-2-14]
;We were trailing by five points.[oald]
;हम पाँच अंको से पिछड रहे थे . 
;This country is still trailing badly in scientific research.
;यह देश अभी भी  वैज्ञानिक-शोध में बुरी तरह से पिछड रहा है . 
(defrule trail13
(declare (salience 4700))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-in_saMbanXI  ?id ?)(kriyA-by_saMbanXI  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trail.clp 	trail13  "  ?id "  piCada )" crlf))
)


;@@@ Added by Prachi Rathore[11-2-14]
; ‘I only hope…’, she trailed off.[oald]
; 'मैं सिर्फ उम्मीद कर सकती हूँ, उसने धीमी आवाज मे कहा .
(defrule trail14
(declare (salience 4650))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XImI_AvAja_me_kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trail.clp	trail14  "  ?id "  " ?id1 "  XImI_AvAja_me_kaha  )" crlf))
)
;default_sense && category=verb	pICe_pICe_Gisata	0
;"trail","VT","1.pICe_pICe_GisatanA"
;Her dress was trailing along the floor.
;--"2.XarawI_ke_Upara_iXara-uXara_PElanA"
;Jasmine creeper is trailing over the walls .
;--"3.hAranA"
;The party is trailing badly in the polls.
;--"4.Waka_kara_calanA"
;Tired Shyam trailed behind his brother.
;
;LEVEL 
;Headword : trail
;
;Example --
;
;"trail","N","1.puCallA"
;We could clearly see the trail of the falling star.
;hamako girawe hue wAre kA puCallA spaRta xiKa rahA WA.
;
;--"2.niSAna" <--apane pICe niSAnoM kI reKA {pagadaNdI}banAwe huye jAnA
;The hurricane left the trail of destruction behind it.
;wUPAna apane pICe barabAxI ke niSAna CodZa gayA hE.
;
;--"3.pagadaNdI"<--sazkarA paWa<--pagadaNdI
;Farmers have made the trails through paddy fields  
;kisAnoM ne XAna ke KewoM ke bIca se pagadandiyAz banA lI hEM
;
;--"4.Koja"<--Koja ke liye teDZe-meDZe sazkare rAswoM se hokara jAnA padZawA hE<--pagadaNdI
;The police are on the trail of the escaped accused.
;pulisa BAge huye aBiyukwa kI Koja meM hE
;
;--"5.xOra yA xOrA"<--eka ke bAxa eka lagAwAra aBiyAna pracAra kara sahAyawA mAzganA<--xOra meM BI niraMwarawA kA ABAsa hE<--pagadaNdI
;Nowadays politicians are on the compaign trail.
;Ajakala rAjanIwijFa aBiyAna ke xOre para hEM
;
;"trail","V","1.GasitanA"<--Gasitawe huye apane niSAna CodZanA<--rAswA banAnA<--pagadaNdI banAnA.
;Her sari was trailing on the floor.
;usakI sAdZI jZamIna para Gisata rahI hE
;
;"2.GasItA jAnA"<--Gasitawe huye calanA<--apane pICe niSAna CodZanA<--pagadaNdI
;The tired students trailed along behind their teachers.
;Wake huye vixxAyArWI apane aXyApakoM ke sAWa pICe Gasitawe huye cala rahe hEM.
;
;"3.PEla jAnA" <--rassI kI waraha <--AdZI-wiraCI reKAoM meM 
;Ivy is trailing over the walls.
;AivI xIvAroM ke Upara saba ora PEla gayI hE.
;
;
;nota:--uparyukwa 'trail'Sabxa ke samaswa vAkyoM ko xeKane para,yaha kahA jA sakawA 
;     hE ki inake aXikAMSa arWoM kA ABAsa,'puCalle'yA'pagadaNdI'se nikala rahA hE 
;     awaH isake liye sUwra nimna prakAra xe sakawe hEM
;
;               sUwra : pagadaNdI[<cihniwa_reKA]


;@@@ Added by Prachi Rathore[8-3-14]
; For a number greater than 1 without any decimal the trailing zero s are not significant.[ncert]
;एक से बडी,बिना दशमलव वाली सङ्ख्या के लिए, अनुगामी शून्य सार्थक - अङ्क नहीं हैं. .
(defrule trail15
(declare (salience 5000))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(viSeRya-saMKyA_viSeRaNa  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anugAmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trail.clp 	trail15   "  ?id "  anugAmI )" crlf))
)


;@@@ Added by Prachi Rathore[8-3-14]
;Thus 123 m 12300 cm 123000 mm has three significant figures the trailing zero s being not significant.[ncert]
;जैसा पहले वर्णन किया जा चुका है कि सार्थक अङ्क मापन की परिशुद्धता इङ्गित करते हैं जो मापक यन्त्र के अल्पतमाङ्क पर निर्भर करती है...
(defrule trail16
(declare (salience 5000))
(id-root ?id trail)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id1 number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anugAmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trail.clp 	trail16   "  ?id "  anugAmI )" crlf))
)

