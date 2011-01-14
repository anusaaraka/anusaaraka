
(defrule ponce0
(declare (salience 5000))
(id-root ?id ponce)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyarWa_samaya_gazvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ponce.clp	ponce0  "  ?id "  " ?id1 "  vyarWa_samaya_gazvA  )" crlf))
)

(defrule ponce1
(declare (salience 4900))
(id-root ?id ponce)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyarWa_samaya_gazvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ponce.clp	ponce1  "  ?id "  " ?id1 "  vyarWa_samaya_gazvA  )" crlf))
)

(defrule ponce2
(declare (salience 4800))
(id-root ?id ponce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyarWa_samaya_gazvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ponce.clp 	ponce2   "  ?id "  vyarWa_samaya_gazvA )" crlf))
)

(defrule ponce3
(declare (salience 4700))
(id-root ?id ponce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vESyA_kI_kamAI_para_rahanevAlA_puruRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ponce.clp 	ponce3   "  ?id "  vESyA_kI_kamAI_para_rahanevAlA_puruRa )" crlf))
)

;"ponce","N","1.vESyA_kI_kamAI_para_rahanevAlA_puruRa"
;Life of a ponce is really terrible.
;
;