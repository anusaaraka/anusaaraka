
(defrule mug0
(declare (salience 5000))
(id-root ?id mug)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aXyayana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mug.clp	mug0  "  ?id "  " ?id1 "  aXyayana_kara  )" crlf))
)

(defrule mug1
(declare (salience 4900))
(id-root ?id mug)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aXyayana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mug.clp	mug1  "  ?id "  " ?id1 "  aXyayana_kara  )" crlf))
)

(defrule mug2
(declare (salience 4800))
(id-root ?id mug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXyayana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mug.clp 	mug2   "  ?id "  aXyayana_kara )" crlf))
)

(defrule mug3
(declare (salience 4700))
(id-root ?id mug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pyAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mug.clp 	mug3   "  ?id "  pyAlA )" crlf))
)

;"mug","N","1.pyAlA"
;The mug is filled with water.
;
;