
(defrule fatigue0
(declare (salience 5000))
(id-root ?id fatigue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WakAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fatigue.clp 	fatigue0   "  ?id "  WakAvata )" crlf))
)

;"fatigue","N","1.WakAvata"
;Many athletes withdrew from the race due to fatigue.
;
(defrule fatigue1
(declare (salience 4900))
(id-root ?id fatigue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fatigue.clp 	fatigue1   "  ?id "  WakA )" crlf))
)

;"fatigue","VT","1.WakAnA"
;I was fatigued after walking 7km.
;
