
(defrule cancel0
(declare (salience 5000))
(id-root ?id cancel)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 raxxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cancel.clp	cancel0  "  ?id "  " ?id1 "  raxxa_kara  )" crlf))
)

(defrule cancel1
(declare (salience 4900))
(id-root ?id cancel)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 raxxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cancel.clp	cancel1  "  ?id "  " ?id1 "  raxxa_kara  )" crlf))
)

(defrule cancel2
(declare (salience 4800))
(id-root ?id cancel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cancel.clp 	cancel2   "  ?id "  raxxa_kara )" crlf))
)

;"cancel","VT","1.raxxa_karanA"
;I have to cancel my tickets to Delhi due to illness.
;
;