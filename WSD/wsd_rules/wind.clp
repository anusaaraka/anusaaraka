
(defrule wind0
(declare (salience 5000))
(id-root ?id wind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id havA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wind.clp 	wind0   "  ?id "  havA )" crlf))
)

;"wind","N","1.havA"
;Skin should be protected against wind.
;
(defrule wind1
(declare (salience 4900))
(id-root ?id wind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hazPA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wind.clp 	wind1   "  ?id "  hazPA )" crlf))
)

;"wind","VT","1.hazPAnA"
;The long climb completely winded us.
;
(defrule wind2
(declare (salience 4800))
(id-root ?id wind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id modZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wind.clp 	wind2   "  ?id "  modZa )" crlf))
)

;"wind","VTI","1.modZanA"
;The road winds towards the mountain.
;
