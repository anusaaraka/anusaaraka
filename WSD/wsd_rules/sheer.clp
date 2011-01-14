
(defrule sheer0
(declare (salience 5000))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahaka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sheer.clp	sheer0  "  ?id "  " ?id1 "  bahaka_jA  )" crlf))
)

(defrule sheer1
(declare (salience 4900))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahaka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sheer.clp	sheer1  "  ?id "  " ?id1 "  bahaka_jA  )" crlf))
)

(defrule sheer2
(declare (salience 4800))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahaka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sheer.clp 	sheer2   "  ?id "  bahaka_jA )" crlf))
)

(defrule sheer3
(declare (salience 4700))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekaxama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sheer.clp 	sheer3   "  ?id "  ekaxama )" crlf))
)

;"sheer","Adv","1.ekaxama"
;The ground dropped away sheer at our feet.
;
;