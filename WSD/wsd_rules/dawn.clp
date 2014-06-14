
;$$$ modified by Pramila(BU) on 05-12-2013
(defrule dawn0
(declare (salience 5000))
(id-root ?id dawn)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?id1)
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
(declare (salience 4000))
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


;@@@ added by pramila(BU) on 05-12-2013
;The dawn of civilization
;saByawA kA aByuxaya 
;It was the dawn of the Roman Empire
;yaha romana sAmrAjya kA aByuxaya WA.
(defrule dawn2
(declare (salience 4900))
(id-root ?id dawn)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aByuxaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dawn.clp 	dawn2   "  ?id "  aByuxaya )" crlf))
)

;@@@ added by pramila(BU) on 05-12-2013
;The age of computers had dawned
;kampyUtara kA yuga AraMBa ho gayA WA.

(defrule dawn3
(declare (salience 5000))
(id-root ?id dawn)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AraMBa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dawn.clp 	dawn3   "  ?id "  AraMBa_ho )" crlf))
)

(defrule dawn4
(declare (salience 4000))
(id-root ?id dawn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saberA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dawn.clp 	dawn4   "  ?id "  saberA_ho )" crlf))
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
