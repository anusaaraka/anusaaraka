
(defrule step0
(declare (salience 5000))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " step.clp	step0  "  ?id "  " ?id1 "  nIce_uwara  )" crlf))
)

(defrule step1
(declare (salience 4900))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " step.clp	step1  "  ?id "  " ?id1 "  nIce_uwara  )" crlf))
)

(defrule step2
(declare (salience 4800))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWAna_CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " step.clp	step2  "  ?id "  " ?id1 "  sWAna_CodZa  )" crlf))
)

(defrule step3
(declare (salience 4700))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWAna_CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " step.clp	step3  "  ?id "  " ?id1 "  sWAna_CodZa  )" crlf))
)

(defrule step4
(declare (salience 4600))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-back_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " step.clp	step4  "  ?id "  " ?id1 "  pICe_jA  )" crlf))
)

(defrule step5
(declare (salience 4500))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " step.clp	step5  "  ?id "  " ?id1 "  pICe_jA  )" crlf))
)

(defrule step6
(declare (salience 4400))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAna_CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  step.clp 	step6   "  ?id "  sWAna_CodZa )" crlf))
)

(defrule step7
(declare (salience 4300))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaxama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  step.clp 	step7   "  ?id "  kaxama )" crlf))
)

;"step","N","1.kaxama"
;She took a step towards the laboratory.
;--"2.kAryavAhI"
;The government took serious steps to check the dacoits.
;--"3.sopAna"
;I made the rangoli in three steps.
;
;

;Added by sheetal(11-12-2009).
(defrule step8
(declare (salience 4350))
(id-root ?id step)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 document)
(id-cat_coarse ?id1 verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  step.clp      step8   "  ?id "  caraNa )" crlf))
)
;The parents documented every step of their child's development .
