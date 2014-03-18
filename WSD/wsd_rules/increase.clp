
;Added by Meena(14.5.10)
;We informed the new employees that no salary increase would be possible . 
(defrule increase0
(declare (salience 5000))
(id-root ?id increase)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 salary)
(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vewana_vqxXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " increase.clp  increase0  "  ?id "  " ?id1 "  vewana_vqxXi  )" crlf))
)




;Salience reduced by Meena(14.5.10)
(defrule increase1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id increase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  increase.clp 	increase1   "  ?id "  vqxXi )" crlf))
)





(defrule increase2
(declare (salience 4900))
(id-root ?id increase)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXi_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  increase.clp 	increase2   "  ?id "  vqxXi_kara )" crlf))
)





(defrule increase3
(declare (salience 4800))
(id-root ?id increase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXi_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  increase.clp 	increase3   "  ?id "  vqxXi_ho )" crlf))
)

;"increase","V","1.vqxXi_karanA[honA]"
;He increased his speed to overtake the car.
;
