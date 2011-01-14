
(defrule persist0
(declare (salience 5000))
(id-root ?id persist)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 adZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " persist.clp	persist0  "  ?id "  " ?id1 "  adZa_jA  )" crlf))
)

(defrule persist1
(declare (salience 4900))
(id-root ?id persist)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 adZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " persist.clp	persist1  "  ?id "  " ?id1 "  adZa_jA  )" crlf))
)

(defrule persist2
(declare (salience 4800))
(id-root ?id persist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  persist.clp 	persist2   "  ?id "  xqDa_raha )" crlf))
)

;"persist","V","1.xqDa_rahanA"
;If you persist, you will annoy your mother even more.
;--"2.adajAnA"
;You should seek medical advice if the pain persists.
;
