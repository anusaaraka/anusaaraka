
(defrule prick0
(declare (salience 5000))
(id-root ?id prick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAna_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " prick.clp	prick0  "  ?id "  " ?id1 "  kAna_uTA  )" crlf))
)

(defrule prick1
(declare (salience 4900))
(id-root ?id prick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAna_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " prick.clp	prick1  "  ?id "  " ?id1 "  kAna_uTA  )" crlf))
)

(defrule prick2
(declare (salience 4800))
(id-root ?id prick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prick.clp 	prick2   "  ?id "  Cexa )" crlf))
)

(defrule prick3
(declare (salience 4700))
(id-root ?id prick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prick.clp 	prick3   "  ?id "  Cexa )" crlf))
)

;"prick","N","1.Cexa"
;While sewing, the needle gave a prick on my finger.
;--"3.mUrKa"
;He behaves like a prick in the class.
;
;