
(defrule wicked0
(declare (salience 5000))
(id-root ?id wicked)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuRtawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wicked.clp 	wicked0   "  ?id "  xuRtawA )" crlf))
)

(defrule wicked1
(declare (salience 4900))
(id-root ?id wicked)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wicked.clp 	wicked1   "  ?id "  xuRta )" crlf))
)

;"wicked","Adj","1.xuRta"
;He is a wicked man.
;
;
