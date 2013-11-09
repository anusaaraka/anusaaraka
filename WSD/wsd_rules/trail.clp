
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
