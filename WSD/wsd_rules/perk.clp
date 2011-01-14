
(defrule perk0
(declare (salience 5000))
(id-root ?id perk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAna_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " perk.clp	perk0  "  ?id "  " ?id1 "  jAna_A  )" crlf))
)

(defrule perk1
(declare (salience 4900))
(id-root ?id perk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAna_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " perk.clp	perk1  "  ?id "  " ?id1 "  jAna_A  )" crlf))
)

(defrule perk2
(declare (salience 4800))
(id-root ?id perk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAna_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perk.clp 	perk2   "  ?id "  jAna_A )" crlf))
)

(defrule perk3
(declare (salience 4700))
(id-root ?id perk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parilabXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perk.clp 	perk3   "  ?id "  parilabXi )" crlf))
)

;"perk","N","1.parilabXi"
;Perks offered by the firm include a house && a car.
;--"2.anulABa"
;She regards free stationery as one of the perks of the job.
;
;