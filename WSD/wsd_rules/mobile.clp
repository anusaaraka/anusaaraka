
(defrule mobile0
(declare (salience 5000))
(id-root ?id mobile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mobile.clp 	mobile0   "  ?id "  calawA )" crlf))
)

(defrule mobile1
(declare (salience 4900))
(id-root ?id mobile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calawA_PirawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mobile.clp 	mobile1   "  ?id "  calawA_PirawA )" crlf))
)

;"mobile","Adj","1.calawA PirawA"
;He was glad to be mobile again.
;
;