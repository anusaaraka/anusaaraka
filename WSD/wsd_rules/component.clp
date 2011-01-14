
(defrule component0
(declare (salience 5000))
(id-root ?id component)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AMSika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  component.clp 	component0   "  ?id "  AMSika )" crlf))
)

;"component","Adj","1.AMSika"
;The spare component parts of cars were dumped by the mechanic.
;
(defrule component1
(declare (salience 4900))
(id-root ?id component)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  component.clp 	component1   "  ?id "  aMSa )" crlf))
)

;"component","N","1.aMSa"
;The mechanic dumped the spare components of cars.
;
