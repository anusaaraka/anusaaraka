
(defrule slop0
(declare (salience 5000))
(id-root ?id slop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gaMxA_pAnI_hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slop.clp	slop0  "  ?id "  " ?id1 "  gaMxA_pAnI_hatA  )" crlf))
)

(defrule slop1
(declare (salience 4900))
(id-root ?id slop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gaMxA_pAnI_hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slop.clp	slop1  "  ?id "  " ?id1 "  gaMxA_pAnI_hatA  )" crlf))
)

(defrule slop2
(declare (salience 4800))
(id-root ?id slop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Calaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slop.clp 	slop2   "  ?id "  Calaka )" crlf))
)

(defrule slop3
(declare (salience 4700))
(id-root ?id slop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suara_kA_KAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slop.clp 	slop3   "  ?id "  suara_kA_KAnA )" crlf))
)

;"slop","N","1.suara kA KAnA"
;Slop is given every day to pigs. 
;
;