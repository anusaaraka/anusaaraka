
(defrule dote0
(declare (salience 5000))
(id-root ?id dote)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 awiSaya_prema_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dote.clp	dote0  "  ?id "  " ?id1 "  awiSaya_prema_kara  )" crlf))
)

;She just dotes on red roses.
;use lAla gulAba bahuwa pasaMxa hEM
(defrule dote1
(declare (salience 4900))
(id-root ?id dote)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 behaxa_pyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dote.clp	dote1  "  ?id "  " ?id1 "  behaxa_pyAra_kara  )" crlf))
)

(defrule dote2
(declare (salience 4800))
(id-root ?id dote)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 behaxa_pyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dote.clp	dote2  "  ?id "  " ?id1 "  behaxa_pyAra_kara  )" crlf))
)

(defrule dote3
(declare (salience 4700))
(id-root ?id dote)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 behaxa_pyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dote.clp	dote3  "  ?id "  " ?id1 "  behaxa_pyAra_kara  )" crlf))
)

(defrule dote4
(declare (salience 4600))
(id-root ?id dote)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 behaxa_pyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dote.clp	dote4  "  ?id "  " ?id1 "  behaxa_pyAra_kara  )" crlf))
)

(defrule dote5
(declare (salience 4500))
(id-root ?id dote)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id behaxa_pyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dote.clp 	dote5   "  ?id "  behaxa_pyAra_kara )" crlf))
)

