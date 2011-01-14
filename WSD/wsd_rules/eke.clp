
(defrule eke0
(declare (salience 5000))
(id-root ?id eke)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vqxXi_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " eke.clp	eke0  "  ?id "  " ?id1 "  vqxXi_kara  )" crlf))
)

;Can you eke out some dryfruits with this ice-cream?
;kyA wuma isa Aisa-krIma meM kuCa meve BI dAla sakawe ho ?
(defrule eke1
(declare (salience 4900))
(id-root ?id eke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIMca_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eke.clp 	eke1   "  ?id "  KIMca_le )" crlf))
)

;"eke","VT","1.KIMca_lenA/baDZAnA"
;The government eked out the grants for the students.
;
;
