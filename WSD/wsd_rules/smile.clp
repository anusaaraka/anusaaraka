
(defrule smile0
(declare (salience 5000))
(id-root ?id smile)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAWa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " smile.clp	smile0  "  ?id "  " ?id1 "  sAWa_xe  )" crlf))
)

(defrule smile1
(declare (salience 4900))
(id-root ?id smile)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAWa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " smile.clp	smile1  "  ?id "  " ?id1 "  sAWa_xe  )" crlf))
)

(defrule smile2
(declare (salience 4800))
(id-root ?id smile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muskarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smile.clp 	smile2   "  ?id "  muskarA )" crlf))
)

;default_sense && category=verb	muskarA	0
;"smile","V","1.muskarAnA"
;He smiled at my comment.
;
;
