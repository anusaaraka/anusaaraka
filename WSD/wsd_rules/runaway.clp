
(defrule runaway0
(declare (salience 5000))
(id-root ?id runaway)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BagodZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  runaway.clp 	runaway0   "  ?id "  BagodZA )" crlf))
)

;"runaway","Adj","1.BagodZA"
;Railway platforms are full of runaway children.
;--"2.aniyaMwriwa"
;Our country's runaway inflation rate is going very high.
;
(defrule runaway1
(declare (salience 4900))
(id-root ?id runaway)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BagodZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  runaway.clp 	runaway1   "  ?id "  BagodZA )" crlf))
)

;"runaway","N","1.BagodZA"
;She works in a hostel for runaways.
;Her work is suffering with young runaways.
;
