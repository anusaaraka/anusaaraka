
(defrule fine0
(declare (salience 5000))
(id-root ?id fine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fine.clp 	fine0   "  ?id "  baDZiyA )" crlf))
)

(defrule fine1
(declare (salience 4900))
(id-root ?id fine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 impose)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jurmAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fine.clp 	fine1   "  ?id "  jurmAnA )" crlf))
)

(defrule fine2
(declare (salience 4800))
(id-root ?id fine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fine.clp 	fine2   "  ?id "  baDZiyA )" crlf))
)

(defrule fine3
(declare (salience 4700))
(id-root ?id fine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 tune)
(kriyA-tune_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrNa_vivaraNa_meM_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fine.clp	fine3  "  ?id "  " ?id1 "  pUrNa_vivaraNa_meM_jA  )" crlf))
)

(defrule fine4
(declare (salience 4600))
(id-root ?id fine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 tune)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrNa_vivaraNa_meM_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fine.clp	fine4  "  ?id "  " ?id1 "  pUrNa_vivaraNa_meM_jA  )" crlf))
)

(defrule fine5
(declare (salience 4500))
(id-root ?id fine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jurmAnA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fine.clp 	fine5   "  ?id "  jurmAnA_lagA )" crlf))
)

;default_sense && category=verb	jurmAnA_lagA	0
;"fine","V","1.jurmAnA_lagAnA"
;The judge made the accused pay a fine for not accepting summons from the court.
;
;
