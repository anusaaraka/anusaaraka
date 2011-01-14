
(defrule mock0
(declare (salience 5000))
(id-root ?id mock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banAvatI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mock.clp 	mock0   "  ?id "  banAvatI )" crlf))
)

;"mock","Adj","1.banAvatI"
;He laughed a mock laughter to irritate them further.
;
(defrule mock1
(declare (salience 4900))
(id-root ?id mock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mock.clp 	mock1   "  ?id "  ciDZA )" crlf))
)

;"mock","V","1.ciDZAnA"
;He would not give up a chance to mock ever.
;
