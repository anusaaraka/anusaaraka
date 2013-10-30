
(defrule ginger0
(declare (salience 5000))
(id-root ?id ginger)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rucikara_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ginger.clp	ginger0  "  ?id "  " ?id1 "  rucikara_banA  )" crlf))
)

;I think we should ginger up this story.
;mEM socawI hUz ki hameM isa kahAnI ko rucikara banAnA cAhie
(defrule ginger1
(declare (salience 4900))
(id-root ?id ginger)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_ko_prowsAhiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ginger.clp	ginger1  "  ?id "  " ?id1 "  kisI_ko_prowsAhiwa_kara  )" crlf))
)

(defrule ginger2
(declare (salience 4800))
(id-root ?id ginger)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_ko_prowsAhiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ginger.clp	ginger2  "  ?id "  " ?id1 "  kisI_ko_prowsAhiwa_kara  )" crlf))
)

(defrule ginger3
(declare (salience 4700))
(id-root ?id ginger)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_ko_prowsAhiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ginger.clp	ginger3  "  ?id "  " ?id1 "  kisI_ko_prowsAhiwa_kara  )" crlf))
)

(defrule ginger4
(declare (salience 4600))
(id-root ?id ginger)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_ko_prowsAhiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ginger.clp	ginger4  "  ?id "  " ?id1 "  kisI_ko_prowsAhiwa_kara  )" crlf))
)

(defrule ginger5
(declare (salience 4500))
(id-root ?id ginger)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_ko_prowsAhiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ginger.clp 	ginger5   "  ?id "  kisI_ko_prowsAhiwa_kara )" crlf))
)

(defrule ginger6
(declare (salience 4400))
(id-root ?id ginger)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axaraKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ginger.clp 	ginger6   "  ?id "  axaraKa )" crlf))
)

;"ginger","N","1.axaraKa"
;Ginger adds taste to tea.
;
;