
(defrule ritual0
(declare (salience 5000))
(id-root ?id ritual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rasma_saMbaMXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ritual.clp 	ritual0   "  ?id "  rasma_saMbaMXI )" crlf))
)

;"ritual","Adj","1.rasma_saMbaMXI"
;Tribal women performed the ritual dance in front of the guests.
;
(defrule ritual1
(declare (salience 4900))
(id-root ?id ritual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kriyApaxXawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ritual.clp 	ritual1   "  ?id "  kriyApaxXawi )" crlf))
)

;"ritual","N","1.kriyApaxXawi"
;The wedding was performed with all the right rituals.
;
