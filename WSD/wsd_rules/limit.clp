
(defrule limit0
(declare (salience 5000))
(id-root ?id limit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limit.clp 	limit0   "  ?id "  sImA )" crlf))
)

;"limit","N","1.sImA"
;Limits of metropolitan towns are expanding day-by-day.
;
(defrule limit1
(declare (salience 4900))
(id-root ?id limit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImiwa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limit.clp 	limit1   "  ?id "  sImiwa_raha )" crlf))
)

;"limit","V","1.sImiwa_rahanA"
;Limit your speech to five minutes.
;
