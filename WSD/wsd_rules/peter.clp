
(defrule peter0
(declare (salience 5000))
(id-root ?id peter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XIre_XIre_samApwa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " peter.clp	peter0  "  ?id "  " ?id1 "  XIre_XIre_samApwa_ho_jA  )" crlf))
)

(defrule peter1
(declare (salience 4900))
(id-root ?id peter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XIre_XIre_samApwa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " peter.clp	peter1  "  ?id "  " ?id1 "  XIre_XIre_samApwa_ho_jA  )" crlf))
)

(defrule peter2
(declare (salience 4800))
(id-root ?id peter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XIre_XIre_samApwa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peter.clp 	peter2   "  ?id "  XIre_XIre_samApwa_ho_jA )" crlf))
)

