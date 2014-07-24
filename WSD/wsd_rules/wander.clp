
(defrule wander0
(declare (salience 5000))
(id-root ?id wander)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-about_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iXara_uXara_GUma));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " wander.clp wander0 " ?id "  iXara_uXara_GUma )" crlf)) 
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

;@@@ Added by Pramila(BU) on 25-02-2014
;He wandered off the right path.   ;shiksharthi
;वह सही रास्ते से भटक गया.
(defrule wander2
(declare (salience 5000))
(id-root ?id wander)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 off|away)
(kriyA-object  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Bataka_jA))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wander.clp	wander2  "  ?id "  " ?id1 "  Bataka_jA  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  wander.clp	wander2   "  ?id " se )" crlf))
)

;@@@ Added by Pramila(BU) on 25-02-2014
;Some sheep wandered away.    ;shiksharthi
;कुछ भेड़े भटक गई.
(defrule wander3
(declare (salience 4900))
(id-root ?id wander)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 off|away)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Bataka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wander.clp	wander3  "  ?id "  " ?id1 "  Bataka_jA  )" crlf))
)

;@@@ Added by Pramila(BU) on 25-02-2014
;His mind was wandering.   ;shiksharthi
;उसका ध्यान भटक रहा था.
(defrule wander4
(declare (salience 4900))
(id-root ?id wander)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-word ?id1 mind|attention)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wander.clp 	wander4   "  ?id "  Bataka )" crlf))
)

(defrule wander5
(declare (salience 100))
(id-root ?id wander)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UMta_patAMga_GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wander.clp 	wander5   "  ?id "  UMta_patAMga_GUma )" crlf))
)

;default_sense && category=verb	GUma	0
;"wander","VI","1.GUmanA"
;He wanders from place to place
;
;
