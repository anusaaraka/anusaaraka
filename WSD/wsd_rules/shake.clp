
(defrule shake0
(declare (salience 5000))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 biCO))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " shake.clp	shake0  "  ?id "  " ?id1 "  biCO  )" crlf))
)

(defrule shake1
(declare (salience 4900))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 biCO))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " shake.clp	shake1  "  ?id "  " ?id1 "  biCO  )" crlf))
)

(defrule shake2
(declare (salience 4800))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shake.clp 	shake2   "  ?id "  hilA )" crlf))
)

(defrule shake3
(declare (salience 4700))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hilAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shake.clp 	shake3   "  ?id "  hilAnA )" crlf))
)

;"shake","N","1.hilAnA"
;Give the jar a good shake.
;--"2.spanxana"
;--"3.kRaNa"
;Hang on! I'll be ready in two shakes.
;
;