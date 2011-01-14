
(defrule fear0
(declare (salience 5000))
(id-root ?id fear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ke_liye_dara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fear.clp	fear0  "  ?id "  " ?id1 "  ke_liye_dara  )" crlf))
)

(defrule fear1
(declare (salience 4900))
(id-root ?id fear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ke_liye_dara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fear.clp	fear1  "  ?id "  " ?id1 "  ke_liye_dara  )" crlf))
)

(defrule fear2
(declare (salience 4800))
(id-root ?id fear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ke_liye_dara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fear.clp	fear2  "  ?id "  " ?id1 "  ke_liye_dara  )" crlf))
)

(defrule fear3
(declare (salience 4700))
(id-root ?id fear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ke_liye_dara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fear.clp	fear3  "  ?id "  " ?id1 "  ke_liye_dara  )" crlf))
)

(defrule fear4
(declare (salience 4600))
(id-root ?id fear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fear.clp 	fear4   "  ?id "  dara )" crlf))
)

;default_sense && category=verb	Baya_kara	0
;default_sense && category=verb	dara	0
;"fear","V","1.dara"
;She does not fear death.
;
;
