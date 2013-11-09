
(defrule gear0
(declare (salience 5000))
(id-root ?id gear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyArI_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " gear.clp gear0 " ?id "  wEyArI_kara )" crlf)) 
)

(defrule gear1
(declare (salience 4900))
(id-root ?id gear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wEyArI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " gear.clp	gear1  "  ?id "  " ?id1 "  wEyArI_kara  )" crlf))
)

(defrule gear2
(declare (salience 4800))
(id-root ?id gear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id giyara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gear.clp 	gear2   "  ?id "  giyara )" crlf))
)

;default_sense && category=noun	sAmAna	0
;"gear","N","1.sAmAna"
;I carry all my sports gear in a kitbag.
;--"2.gawi"
;The Congress party seems to be moving into top gear.
;He drives in second gear.
;
;