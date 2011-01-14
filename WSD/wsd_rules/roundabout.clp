
(defrule roundabout0
(declare (salience 5000))
(id-root ?id roundabout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golamola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roundabout.clp 	roundabout0   "  ?id "  golamola )" crlf))
)

;"roundabout","Adj","1.golamola"
;He took a roundabout route to reach the theatre.
;
(defrule roundabout1
(declare (salience 4900))
(id-root ?id roundabout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id merI-go-rAunda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roundabout.clp 	roundabout1   "  ?id "  merI-go-rAunda )" crlf))
)

;"roundabout","N","1.merI-go-rAunda"
