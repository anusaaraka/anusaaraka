
(defrule mud0
(declare (salience 5000))
(id-root ?id mud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kIcadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mud.clp 	mud0   "  ?id "  kIcadZa )" crlf))
)

(defrule mud1
(declare (salience 4900))
(id-root ?id mud)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-through_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_waraha_saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mud.clp	mud1  "  ?id "  " ?id1 "  kisI_waraha_saPala_ho  )" crlf))
)

(defrule mud2
(declare (salience 4800))
(id-root ?id mud)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_waraha_saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mud.clp	mud2  "  ?id "  " ?id1 "  kisI_waraha_saPala_ho  )" crlf))
)

(defrule mud3
(declare (salience 4700))
(id-root ?id mud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_waraha_saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mud.clp 	mud3   "  ?id "  kisI_waraha_saPala_ho )" crlf))
)

;default_sense && category=noun	kIcadZa	0
;"mud","N","1.kIcadZa"
;There was a lot of mud in the play ground.
;
;