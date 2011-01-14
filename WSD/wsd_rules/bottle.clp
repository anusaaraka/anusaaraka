
(defrule bottle0
(declare (salience 5000))
(id-root ?id bottle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bottle.clp	bottle0  "  ?id "  " ?id1 "  roka  )" crlf))
)

(defrule bottle1
(declare (salience 4900))
(id-root ?id bottle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bottle.clp	bottle1  "  ?id "  " ?id1 "  roka  )" crlf))
)

(defrule bottle2
(declare (salience 4800))
(id-root ?id bottle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bowala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bottle.clp 	bottle2   "  ?id "  bowala )" crlf))
)

(defrule bottle3
(declare (salience 4700))
(id-root ?id bottle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bowala_meM_banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bottle.clp 	bottle3   "  ?id "  bowala_meM_banxa_kara )" crlf))
)

;"bottle","VT","1.bowala_meM_banxa_karanA/baMXana_meM_raKanA"
;Cool the sauce && bottle it in disinfected bottles.
;
;