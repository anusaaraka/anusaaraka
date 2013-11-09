
;Added by human
(defrule tumble0
(declare (salience 5000))
(id-root ?id tumble)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " tumble.clp tumble0 " ?id "  gira )" crlf)) 
)

(defrule tumble1
(declare (salience 4900))
(id-root ?id tumble)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tumble.clp	tumble1  "  ?id "  " ?id1 "  gira  )" crlf))
)

(defrule tumble2
(declare (salience 4800))
(id-root ?id tumble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tumble.clp 	tumble2   "  ?id "  girAva )" crlf))
)

;default_sense && category=noun	girAvata	0
;"tumble","N","1.girAvata"
;People buy gold when there is a tumble in gold.
;--"2.aswa_vyaswa_kI_sWiwi"
;All her things were in a tumble.
;
;
