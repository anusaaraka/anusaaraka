
(defrule gloss0
(declare (salience 5000))
(id-root ?id gloss)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CipAne_kI_koSiSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " gloss.clp	gloss0  "  ?id "  " ?id1 "  CipAne_kI_koSiSa_kara  )" crlf))
)

;She glossed over all that informations that could prove her wrong.
;usane vo sArI jAnakAriyAz CipAne kI koSiSa kI jo use galwa sAbiwa kara sakawIM WIM
(defrule gloss1
(declare (salience 4900))
(id-root ?id gloss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gloss.clp 	gloss1   "  ?id "  camaka )" crlf))
)

;"gloss","N","1.camaka"
;The gloss of gold attracts everyone.
;
(defrule gloss2
(declare (salience 4800))
(id-root ?id gloss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAharI_camaka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gloss.clp 	gloss2   "  ?id "  bAharI_camaka_xe )" crlf))
)

;"gloss","VT","1.bAharI_camaka_xenA"
;They put gloss on the walls on the occasion of diwali.
;
