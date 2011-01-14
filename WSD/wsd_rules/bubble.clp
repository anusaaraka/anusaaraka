
(defrule bubble0
(declare (salience 5000))
(id-root ?id bubble)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uPAna_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bubble.clp	bubble0  "  ?id "  " ?id1 "  uPAna_A  )" crlf))
)

;The tea bubbled over.
;cAya meM uPAna A gayA
(defrule bubble1
(declare (salience 4900))
(id-root ?id bubble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bubble.clp 	bubble1   "  ?id "  asAra )" crlf))
)

;"bubble","Adj","1.asAra"
(defrule bubble2
(declare (salience 4800))
(id-root ?id bubble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bulabulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bubble.clp 	bubble2   "  ?id "  bulabulA )" crlf))
)

;"bubble","N","1.bulabulA"
;Life is a bubble that can burst any day.
;
(defrule bubble3
(declare (salience 4700))
(id-root ?id bubble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaxabaxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bubble.clp 	bubble3   "  ?id "  KaxabaxA )" crlf))
)

;"bubble","VI","1.KaxabaxAnA/bulabule_uTanA"
;The lava bubbled in the crater.
;
