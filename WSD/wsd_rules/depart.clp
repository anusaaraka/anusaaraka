
(defrule depart0
(declare (salience 5000))
(id-root ?id depart)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 from)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " depart.clp	depart0  "  ?id "  " ?id1 "  hata  )" crlf))
)

(defrule depart1
(declare (salience 4900))
(id-root ?id depart)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 from)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " depart.clp	depart1  "  ?id "  " ?id1 "  hata  )" crlf))
)

(defrule depart2
(declare (salience 4800))
(id-root ?id depart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depart.clp 	depart2   "  ?id "  jA )" crlf))
)

;"depart","V","1.jAnA{alaga}"
;The train will depart from platform number 3.
;
(defrule depart3
(declare (salience 4700))
(id-root ?id depart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_hata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depart.clp 	depart3   "  ?id "  se_hata )" crlf))
)

;"depart","VT","1.se_hatanA"
;Do not depart from your earlier statement.
;
