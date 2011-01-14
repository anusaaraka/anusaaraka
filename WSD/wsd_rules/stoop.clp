
(defrule stoop0
(declare (salience 5000))
(id-root ?id stoop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 haxa_se_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stoop.clp	stoop0  "  ?id "  " ?id1 "  haxa_se_gira  )" crlf))
)

(defrule stoop1
(declare (salience 4900))
(id-root ?id stoop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 haxa_se_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stoop.clp	stoop1  "  ?id "  " ?id1 "  haxa_se_gira  )" crlf))
)

(defrule stoop2
(declare (salience 4800))
(id-root ?id stoop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stoop.clp 	stoop2   "  ?id "  Juka )" crlf))
)

(defrule stoop3
(declare (salience 4700))
(id-root ?id stoop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Juke_hue_kaMXe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stoop.clp 	stoop3   "  ?id "  Juke_hue_kaMXe )" crlf))
)

;"stoop","N","1.Juke_hue_kaMXe"
;Tall people always walk with a slight stoop.
;
;