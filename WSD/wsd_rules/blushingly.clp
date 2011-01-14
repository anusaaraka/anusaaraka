
(defrule blushingly0
(declare (salience 5000))
(id-root ?id blushingly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lajjAse))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blushingly.clp 	blushingly0   "  ?id "  lajjAse )" crlf))
)

;"blushingly","Adj","1.lajjAse"
;The bride entered the room blushingly.
;
(defrule blushingly1
(declare (salience 4900))
(id-root ?id blushingly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lajjAraMjiwa_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blushingly.clp 	blushingly1   "  ?id "  lajjAraMjiwa_rUpa_se )" crlf))
)

;"blushingly","Adv","1.lajjAraMjiwa_rUpa_se"
;She put the garland blushingly on his neck
;usane lajjAraMjiwa rUpa se usake gale me mAlA dAlI
;
