
(defrule stay0
(declare (salience 5000))
(id-root ?id stay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAge_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stay.clp	stay0  "  ?id "  " ?id1 "  jAge_raha  )" crlf))
)

(defrule stay1
(declare (salience 4900))
(id-root ?id stay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAge_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stay.clp	stay1  "  ?id "  " ?id1 "  jAge_raha  )" crlf))
)

(defrule stay2
(declare (salience 4800))
(id-root ?id stay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stay.clp 	stay2   "  ?id "  raha )" crlf))
)

;default_sense && category=verb	raha	0
;"stay","V","1.rahanA"
;You have to stay in that cottage to save your life.
;
;