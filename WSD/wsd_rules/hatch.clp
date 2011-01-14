
(defrule hatch0
(declare (salience 5000))
(id-root ?id hatch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vikasiwa_ho))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hatch.clp	hatch0  "  ?id "  " ?id1 "  vikasiwa_ho  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  hatch.clp     hatch0   "  ?id " se )" crlf)
)

(defrule hatch1
(declare (salience 4900))
(id-root ?id hatch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMde_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hatch.clp 	hatch1   "  ?id "  aMde_se )" crlf))
)

;default_sense && category=verb	aMde se	0
;"hatch","V","1.aMde senA"
;In a corner of the room, the hen was hatching the eggs.
;
;
