
(defrule tear0
(declare (salience 5000))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tear.clp	tear0  "  ?id "  " ?id1 "  PAdZa  )" crlf))
)

(defrule tear1
(declare (salience 4900))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tear.clp	tear1  "  ?id "  " ?id1 "  PAdZa  )" crlf))
)

(defrule tear2
(declare (salience 4800))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AzsU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tear.clp 	tear2   "  ?id "  AzsU )" crlf))
)

(defrule tear3
(declare (salience 4700))
(id-root ?id tear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tear.clp 	tear3   "  ?id "  PAdZa )" crlf))
)

;"tear","VT","1.PAdZanA"
;The tiger tore its prey.
;??--"2.aSAnwipUrNa_honA"
;The region was torn to conflicts.
;
;
