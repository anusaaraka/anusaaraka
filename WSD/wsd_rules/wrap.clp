
(defrule wrap0
(declare (salience 5000))
(id-root ?id wrap)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id wrapping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id lapetana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wrap.clp  	wrap0   "  ?id "  lapetana )" crlf))
)

;"wrapping","N","1.lapetana"
;Give a good wrapping for the porcelain.
;
;
(defrule wrap1
(declare (salience 4900))
(id-root ?id wrap)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lapeta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wrap.clp	wrap1  "  ?id "  " ?id1 "  lapeta  )" crlf))
)

(defrule wrap2
(declare (salience 4800))
(id-root ?id wrap)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lapeta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wrap.clp	wrap2  "  ?id "  " ?id1 "  lapeta  )" crlf))
)


(defrule wrap3
(declare (salience 4700))
(id-root ?id wrap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb|adjective)
=>
(retract ?mng)
(assert (id-wsd_number ?id s))
(assert (id-wsd_root_mng ?id lapeta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrap.clp 	wrap3   "  ?id "  lapeta )" crlf))
)


(defrule wrap4
(declare (salience 4700))
(id-word ?id wrapped)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lapeta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrap.clp      wrap4   "  ?id "  lapeta )" crlf))
)

;"wrap","VT","1.lapetanA{kAgajZa_Axi_se}"
;The gifts were wrapped && kept on the table.
;
