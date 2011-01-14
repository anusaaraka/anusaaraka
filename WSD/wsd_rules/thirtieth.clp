
(defrule thirtieth0
(declare (salience 5000))
(id-root ?id thirtieth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIsavAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thirtieth.clp 	thirtieth0   "  ?id "  wIsavAz )" crlf))
)

;"thirtieth","Adj","1.wIsavAz"
;Dick celebrated his thirtieth birthday.
;
(defrule thirtieth1
(declare (salience 4900))
(id-root ?id thirtieth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIsavAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thirtieth.clp 	thirtieth1   "  ?id "  wIsavAz )" crlf))
)

;"thirtieth","N","1.wIsavAz"
;His marriage is fixed on the thirtieth of this month.
;
