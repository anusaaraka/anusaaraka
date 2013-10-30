
(defrule wander0
(declare (salience 5000))
(id-root ?id wander)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-about_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 iXara_uXara_GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wander.clp	wander0  "  ?id "  " ?id1 "  iXara_uXara_GUma  )" crlf))
)

(defrule wander1
(declare (salience 4900))
(id-root ?id wander)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 iXara_uXara_GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wander.clp	wander1  "  ?id "  " ?id1 "  iXara_uXara_GUma  )" crlf))
)

(defrule wander2
(declare (salience 4800))
(id-root ?id wander)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UMta_patAMga_GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wander.clp 	wander2   "  ?id "  UMta_patAMga_GUma )" crlf))
)

;default_sense && category=verb	GUma	0
;"wander","VI","1.GUmanA"
;He wanders from place to place
;
;