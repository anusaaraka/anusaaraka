
(defrule stuck0
(declare (salience 5000))
(id-root ?id stuck)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Pazsa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stuck.clp	stuck0  "  ?id "  " ?id1 "  Pazsa_jA  )" crlf))
)

(defrule stuck1
(declare (salience 4900))
(id-root ?id stuck)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Pazsa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stuck.clp	stuck1  "  ?id "  " ?id1 "  Pazsa_jA  )" crlf))
)

(defrule stuck2
(declare (salience 4800))
(id-root ?id stuck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pazsa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stuck.clp 	stuck2   "  ?id "  Pazsa_jA )" crlf))
)

(defrule stuck3
(declare (salience 4700))
(id-root ?id stuck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id atakA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stuck.clp 	stuck3   "  ?id "  atakA_huA )" crlf))
)

;"stuck","Adj","1.atakA huA"
; We were stuck in traffic jam for an hour.
;
;