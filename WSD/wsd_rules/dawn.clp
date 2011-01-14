
(defrule dawn0
(declare (salience 5000))
(id-root ?id dawn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa_meM_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dawn.clp	dawn0  "  ?id "  " ?id1 "  samaJa_meM_A  )" crlf))
)

;Then it dawned on me that my exams were only two weeks away.
;waba merI samaJa meM AyA ki merI parIkRA kevala xo haPwe bAxa WI
;GoRaNA_karanA(kisI_ke_pakRa_meM)	0
;The Health Minister has declared against the new bill.
;svAsWaya maMwrI ne nae bila kI GoRaNA kI hE
(defrule dawn1
(declare (salience 4900))
(id-root ?id dawn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uRAkAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dawn.clp 	dawn1   "  ?id "  uRAkAla )" crlf))
)

;"dawn","N","1.uRAkAla"
;We got up before dawn
;--"2.AraMBa/uxBava/uxaya"
;The dawn of civilization
;It was the dawn of the Roman Empire
;
(defrule dawn2
(declare (salience 4800))
(id-root ?id dawn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saberA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dawn.clp 	dawn2   "  ?id "  saberA_ho )" crlf))
)

;"dawn","VT","1.saberA_honA"
;It started to dawn, && we had to get up
;--"2.xiKAI_xenA"
;It dawned on him that she had betrayed him
;--"3.AraMBa_honA/uxBava_honA"
;The age of computers had dawned
;
;LEVEL 
;Headword : dawn
;
;Examples --
;
;We got up before dawn
;hama uRAkAla ke pahale uTe
;
;--"2.aByuxaya"
;The dawn of civilization
;saByawA kA aByuxaya   <---uxaya honA <--- nayA honA <-- naye savere kA AnA <--uRAkAla
;
;It was the dawn of the Roman Empire
;yaha romana sAmrAjya kA aByuxaya WA.
;
;"dawn","VT","1.saberA_honA"
;It started to dawn, && we had to get up
;saverA hone lagA WA Ora hamako uTanA padZA.  <---uRAkAla
;
;--"2.xiKAI_xenA"
;It dawned on Ravi that Rita had betrayed him
;ravi ko yaha xiKAI xene lagA ki rIwA ne use XoKA xiyA WA. <---nayI xqRti milanA <-- samaJa ke parxe para se aMXakAra hatanA <---nayI samaJa kA aByuxaya honA <---uRAkAla
;--"3.AraMBa_honA"
;The age of computers had dawned
;kampyUtara kA yuga AraMBa ho gayA WA.  <--naye yuga kA uRAkAla honA 
;
;
;sUwra : aByuxaya[<uRAkAla]
