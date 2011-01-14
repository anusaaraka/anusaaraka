
(defrule clock0
(declare (salience 5000))
(id-root ?id clock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Ane_yA_jAne_ke_samaya_kA_leKA_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clock.clp	clock0  "  ?id "  " ?id1 "  Ane_yA_jAne_ke_samaya_kA_leKA_raKa  )" crlf))
)

;What time did you clock on this morning?
;wuma subaha kiwane baje Aye We ?
;aMwa_yA_SurUAwa_karanA(kisI_kAma_kA)	0
;I clocked on my work at 7 o'clock.
;mEne sAwa baje se apane kAma kI SuruAwa kIM
;mAilomItara_meM_nApanA	0
;They've clocked up seven thousand miles this year in their car.
;
(defrule clock1
(declare (salience 4900))
(id-root ?id clock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GadZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clock.clp 	clock1   "  ?id "  GadZI )" crlf))
)

(defrule clock2
(declare (salience 4800))
(id-root ?id clock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clock.clp 	clock2   "  ?id "  samaya_lagA )" crlf))
)

;"clock","V","1.samaya_lagAnA"
;Carl Lewis clocked 9.95 seconds in 100 metres heat.
;
;
