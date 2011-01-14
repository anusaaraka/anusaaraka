
(defrule latch0
(declare (salience 5000))
(id-root ?id latch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " latch.clp	latch0  "  ?id "  " ?id1 "  samaJa  )" crlf))
)

(defrule latch1
(declare (salience 4900))
(id-root ?id latch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " latch.clp	latch1  "  ?id "  " ?id1 "  samaJa  )" crlf))
)

(defrule latch2
(declare (salience 4800))
(id-root ?id latch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " latch.clp	latch2  "  ?id "  " ?id1 "  samaJa  )" crlf))
)

(defrule latch3
(declare (salience 4700))
(id-root ?id latch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " latch.clp	latch3  "  ?id "  " ?id1 "  samaJa  )" crlf))
)

(defrule latch4
(declare (salience 4600))
(id-root ?id latch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sitakinI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  latch.clp 	latch4   "  ?id "  sitakinI_lagA )" crlf))
)

;default_sense && category=verb	sitakinI lagA	0
;"latch","V","1.sitakinI lagAnA"
;Please latch the door before you go to bed.
;
;