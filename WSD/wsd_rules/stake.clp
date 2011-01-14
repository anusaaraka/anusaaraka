
(defrule stake0
(declare (salience 5000))
(id-root ?id stake)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xAvA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stake.clp	stake0  "  ?id "  " ?id1 "  xAvA_kara  )" crlf))
)

(defrule stake1
(declare (salience 4900))
(id-root ?id stake)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xAvA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stake.clp	stake1  "  ?id "  " ?id1 "  xAvA_kara  )" crlf))
)

(defrule stake2
(declare (salience 4800))
(id-root ?id stake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUztA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stake.clp 	stake2   "  ?id "  KUztA )" crlf))
)

(defrule stake3
(declare (salience 4700))
(id-root ?id stake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahArA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stake.clp 	stake3   "  ?id "  sahArA_xe )" crlf))
)

;"stake","V","1.sahArA xenA"
;They staked the saplings with small sticks.
;--"2.xAzva para lagAnA"     
;To save his friend Rama staked his money.
;
;