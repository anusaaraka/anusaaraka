
(defrule dwell0
(declare (salience 5000))
(id-root ?id dwell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-on_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_samaya_waka_socanA_aWavA_bola));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " dwell.clp dwell0 " ?id "  bahuwa_samaya_waka_socanA_aWavA_bola )" crlf)) 
)

(defrule dwell1
(declare (salience 4900))
(id-root ?id dwell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahuwa_samaya_waka_socanA_aWavA_bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dwell.clp	dwell1  "  ?id "  " ?id1 "  bahuwa_samaya_waka_socanA_aWavA_bola  )" crlf))
)

;I try not to dwell on the past.
(defrule dwell2
(declare (salience 4800))
(id-root ?id dwell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nivAsa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " dwell.clp dwell2 " ?id "  nivAsa_kara )" crlf)) 
)

(defrule dwell3
(declare (salience 4700))
(id-root ?id dwell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nivAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dwell.clp	dwell3  "  ?id "  " ?id1 "  nivAsa_kara  )" crlf))
)

;mEM koSiSa karawA hUz ki apane awIwa ke bAre meM bahuwa samaya waka na socUz
(defrule dwell4
(declare (salience 4600))
(id-root ?id dwell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para_vicAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dwell.clp 	dwell4   "  ?id "  para_vicAra_kara )" crlf))
)

;"dwell","V","1.para_vicAra_karanA"
;--"2.nivAsa_karanA"
;--"3.para_xera_waka_bolanA"
;
