
(defrule grace0
(declare (salience 5000))
(id-root ?id grace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqpA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grace.clp 	grace0   "  ?id "  kqpA )" crlf))
)

;"grace","N","1.kqpA"
;By the grace of God I am well.
;
(defrule grace1
(declare (salience 4900))
(id-root ?id grace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suSoBiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grace.clp 	grace1   "  ?id "  suSoBiwa_kara )" crlf))
)

;"grace","V","1.suSoBiwa_karanA"
;A beautiful rose plant graces my garden.
;
