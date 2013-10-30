
(defrule sum0
(declare (salience 5000))
(id-root ?id sum)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sArAMSa_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sum.clp	sum0  "  ?id "  " ?id1 "  sArAMSa_nikAla  )" crlf))
)

(defrule sum1
(declare (salience 4900))
(id-root ?id sum)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sArAMSa_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sum.clp	sum1  "  ?id "  " ?id1 "  sArAMSa_nikAla  )" crlf))
)

(defrule sum2
(declare (salience 4800))
(id-root ?id sum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sum.clp 	sum2   "  ?id "  jodZa )" crlf))
)

;default_sense && category=noun	yoga	0
;"sum","N","1.yoga"
;Sum of 3 && 4 is seven.
;
;