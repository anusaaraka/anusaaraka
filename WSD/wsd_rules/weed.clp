
(defrule weed0
(declare (salience 5000))
(id-root ?id weed)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " weed.clp	weed0  "  ?id "  " ?id1 "  nikAla  )" crlf))
)

(defrule weed1
(declare (salience 4900))
(id-root ?id weed)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " weed.clp	weed1  "  ?id "  " ?id1 "  nikAla  )" crlf))
)

(defrule weed2
(declare (salience 4800))
(id-root ?id weed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAsa_PUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weed.clp 	weed2   "  ?id "  GAsa_PUsa )" crlf))
)

;"weed","N","1.GAsa_PUsa"
;Weeds spread in the garden.
;
(defrule weed3
(declare (salience 4700))
(id-root ?id weed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id moWA_hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weed.clp 	weed3   "  ?id "  moWA_hatA )" crlf))
)

;"weed","VT","1.moWA_hatAnA"
;Remove the weeds from the lawn.
;
