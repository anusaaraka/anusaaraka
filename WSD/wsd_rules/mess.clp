
(defrule mess0
(declare (salience 5000))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KZarAba_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mess.clp	mess0  "  ?id "  " ?id1 "  KZarAba_kara  )" crlf))
)

;
;I don't want him to mess up his career.
(defrule mess1
(declare (salience 4900))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gadZabadZI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mess.clp	mess1  "  ?id "  " ?id1 "  gadZabadZI_kara  )" crlf))
)

(defrule mess2
(declare (salience 4800))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gadZabadZI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mess.clp	mess2  "  ?id "  " ?id1 "  gadZabadZI_kara  )" crlf))
)

(defrule mess3
(declare (salience 4700))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gadZabadZI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mess.clp	mess3  "  ?id "  " ?id1 "  gadZabadZI_kara  )" crlf))
)

(defrule mess4
(declare (salience 4600))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gadZabadZI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mess.clp	mess4  "  ?id "  " ?id1 "  gadZabadZI_kara  )" crlf))
)

(defrule mess5
(declare (salience 4500))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadZabadZI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mess.clp 	mess5   "  ?id "  gadZabadZI_kara )" crlf))
)

(defrule mess6
(declare (salience 4400))
(id-root ?id mess)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BojanAlaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mess.clp 	mess6   "  ?id "  BojanAlaya )" crlf))
)

;"mess","N","1.BojanAlaya"
;Lets eat in the mess.
;--"2.gadZabadZI"
;Please clear the mess.
;--"3.JaMJata"
;He is in a real mess.
;--"4.gaMxagI"
;They asked the kids to clean the mess in the room.
;
;