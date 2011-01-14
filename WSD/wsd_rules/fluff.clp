
(defrule fluff0
(declare (salience 5000))
(id-root ?id fluff)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fluff.clp	fluff0  "  ?id "  " ?id1 "  PulA  )" crlf))
)

(defrule fluff1
(declare (salience 4900))
(id-root ?id fluff)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fluff.clp	fluff1  "  ?id "  " ?id1 "  PulA  )" crlf))
)

(defrule fluff2
(declare (salience 4800))
(id-root ?id fluff)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fluff.clp	fluff2  "  ?id "  " ?id1 "  PulA  )" crlf))
)

(defrule fluff3
(declare (salience 4700))
(id-root ?id fluff)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fluff.clp	fluff3  "  ?id "  " ?id1 "  PulA  )" crlf))
)

(defrule fluff4
(declare (salience 4600))
(id-root ?id fluff)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fluff.clp	fluff4  "  ?id "  " ?id1 "  PulA  )" crlf))
)

(defrule fluff5
(declare (salience 4500))
(id-root ?id fluff)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fluff.clp	fluff5  "  ?id "  " ?id1 "  PulA  )" crlf))
)

(defrule fluff6
(declare (salience 4400))
(id-root ?id fluff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fluff.clp 	fluff6   "  ?id "  PulA )" crlf))
)

(defrule fluff7
(declare (salience 4300))
(id-root ?id fluff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fluff.clp 	fluff7   "  ?id "  roAz )" crlf))
)

;"fluff","N","1.roAz"
;Lot of fluff is collected on your blankets.
;--"2.jAnavaroM ke mulAyama roEM"
;Young birds have fluff which develops into feathers.
;
;