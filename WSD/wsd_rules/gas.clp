
(defrule gas0
(declare (salience 5000))
(id-root ?id gas)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-about_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gappe_ladZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " gas.clp	gas0  "  ?id "  " ?id1 "  gappe_ladZA  )" crlf))
)

(defrule gas1
(declare (salience 4900))
(id-root ?id gas)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-about_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gappe_ladZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " gas.clp	gas1  "  ?id "  " ?id1 "  gappe_ladZA  )" crlf))
)

(defrule gas2
(declare (salience 4800))
(id-root ?id gas)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-about_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gappe_ladZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " gas.clp	gas2  "  ?id "  " ?id1 "  gappe_ladZA  )" crlf))
)

(defrule gas3
(declare (salience 4700))
(id-root ?id gas)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gappe_ladZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " gas.clp	gas3  "  ?id "  " ?id1 "  gappe_ladZA  )" crlf))
)

(defrule gas4
(declare (salience 4600))
(id-root ?id gas)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaharIlI_gEsa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gas.clp 	gas4   "  ?id "  jaharIlI_gEsa_xe )" crlf))
)

(defrule gas5
(declare (salience 4500))
(id-root ?id gas)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaharIlI_gEsa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gas.clp 	gas5   "  ?id "  jaharIlI_gEsa_le )" crlf))
)

;default_sense && category=verb	jZaharIlI_gEsa_lenA[xenA]	0
;"gas","V","1.jZaharIlI_gEsa_lenA[xenA]"
;She gassed herself to death.
;
;
