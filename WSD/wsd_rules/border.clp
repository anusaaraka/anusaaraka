
(defrule border0
(declare (salience 5000))
(id-root ?id border)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sImA_para_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " border.clp	border0  "  ?id "  " ?id1 "  sImA_para_ho  )" crlf))
)

(defrule border1
(declare (salience 4900))
(id-root ?id border)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sImA_para_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " border.clp	border1  "  ?id "  " ?id1 "  sImA_para_ho  )" crlf))
)

(defrule border2
(declare (salience 4800))
(id-root ?id border)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  border.clp 	border2   "  ?id "  sImA )" crlf))
)

(defrule border3
(declare (salience 4700))
(id-root ?id border)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinAre_para_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  border.clp 	border3   "  ?id "  kinAre_para_ho )" crlf))
)

;default_sense && category=verb	se_lagA_huA_ho	0
;"border","V","1.se_lagA_huA_honA"
;How many countries border India?
;--"2.sImA_banAnA"
;Her garden is bordered on three sides by a tough hedge.
;
;