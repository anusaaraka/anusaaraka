
(defrule retrospect0
(declare (salience 5000))
(id-root ?id retrospect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paScAxavalokana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retrospect.clp 	retrospect0   "  ?id "  paScAxavalokana )" crlf))
)

;"retrospect","N","1.paScAxavalokana"
;In retrospect looking back on a past incident is a foolishness.
;
(defrule retrospect1
(declare (salience 4900))
(id-root ?id retrospect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id punarAvalokana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retrospect.clp 	retrospect1   "  ?id "  punarAvalokana_kara )" crlf))
)

;"retrospect","VT","1.punarAvalokana_karanA"
;The management has retrospected her confidential report.
;
