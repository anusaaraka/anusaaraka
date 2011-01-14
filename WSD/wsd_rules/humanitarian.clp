
(defrule humanitarian0
(declare (salience 5000))
(id-root ?id humanitarian)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnavikI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  humanitarian.clp 	humanitarian0   "  ?id "  mAnavikI )" crlf))
)

;"humanitarian","Adj","1.mAnavikI"
(defrule humanitarian1
(declare (salience 4900))
(id-root ?id humanitarian)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnavikI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  humanitarian.clp 	humanitarian1   "  ?id "  mAnavikI )" crlf))
)

;"humanitarian","N","1.mAnavikI"
;maxera weresA'Humanitarian' WI jo jIvanaparyanwa anAWa baccoM kI sevA kI.
;
