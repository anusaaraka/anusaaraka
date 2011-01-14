
(defrule sweat0
(declare (salience 5000))
(id-root ?id sweat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasInA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweat.clp 	sweat0   "  ?id "  pasInA )" crlf))
)

(defrule sweat1
(declare (salience 4900))
(id-root ?id sweat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vajana_GatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sweat.clp	sweat1  "  ?id "  " ?id1 "  vajana_GatA  )" crlf))
)

(defrule sweat2
(declare (salience 4800))
(id-root ?id sweat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vajana_GatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sweat.clp	sweat2  "  ?id "  " ?id1 "  vajana_GatA  )" crlf))
)

(defrule sweat3
(declare (salience 4700))
(id-root ?id sweat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasInA_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweat.clp 	sweat3   "  ?id "  pasInA_nikAla )" crlf))
)

;default_sense && category=verb	pasInA nikala	0
;"sweat","V","1.pasInA nikalanA"
;When I saw the exam paper I start sweating.
;
;