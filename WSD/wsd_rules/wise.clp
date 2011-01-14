
(defrule wise0
(declare (salience 5000))
(id-root ?id wise)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAvaXAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wise.clp	wise0  "  ?id "  " ?id1 "  sAvaXAna_kara  )" crlf))
)

(defrule wise1
(declare (salience 4900))
(id-root ?id wise)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAvaXAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wise.clp	wise1  "  ?id "  " ?id1 "  sAvaXAna_kara  )" crlf))
)

(defrule wise2
(declare (salience 4800))
(id-root ?id wise)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jFAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wise.clp 	wise2   "  ?id "  jFAnI )" crlf))
)

;"wise","Adj","1.jFAnI"
;Wise people think before they act.
;
(defrule wise3
(declare (salience 4700))
(id-root ?id wise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rIwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wise.clp 	wise3   "  ?id "  rIwi )" crlf))
)

;"wise","N","1.rIwi"
;This curtain should be put lengthwise.
;
