
(defrule bash0
(declare (salience 5000))
(id-root ?id bash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bash.clp	bash0  "  ?id "  " ?id1 "  mAra  )" crlf))
)

;She bashed in the door.
;usane xaravAje meM mArA
(defrule bash1
(declare (salience 4900))
(id-root ?id bash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_kArya_ko_uwsAha_se_karawe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bash.clp	bash1  "  ?id "  " ?id1 "  kisI_kArya_ko_uwsAha_se_karawe_raha  )" crlf))
)

;He bashed on without caring for the results.
;vaha pariNAma kI paravAha kie binA apanA kArya uwsAha se karawA gayA
