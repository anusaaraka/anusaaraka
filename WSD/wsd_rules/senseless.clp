
(defrule senseless0
(declare (salience 5000))
(id-root ?id senseless)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bemawalaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  senseless.clp 	senseless0   "  ?id "  bemawalaba )" crlf))
)

(defrule senseless1
(declare (salience 4900))
(id-root ?id senseless)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bevakUPZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  senseless.clp 	senseless1   "  ?id "  bevakUPZa )" crlf))
)

;"senseless","Adj","1.bevakUPZa"
;You are the most senseless person, I had seen in my life.
;--"2.behoSa"
;He fell senseless to the ground.
;
;
