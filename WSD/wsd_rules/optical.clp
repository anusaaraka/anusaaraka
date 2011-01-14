
(defrule optical0
(declare (salience 5000))
(id-root ?id optical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqRti-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  optical.clp 	optical0   "  ?id "  xqRti- )" crlf))
)

(defrule optical1
(declare (salience 4900))
(id-root ?id optical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqRti_saMbaMXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  optical.clp 	optical1   "  ?id "  xqRti_saMbaMXI )" crlf))
)

;"optical","Adj","1.xqRti_saMbaMXI"
;Micro scopes && telescopes are optical insttruments.
;
;
