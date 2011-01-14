
(defrule lunge0
(declare (salience 5000))
(id-root ?id lunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CalAzga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lunge.clp 	lunge0   "  ?id "  CalAzga )" crlf))
)

;"lunge","N","1.CalAzga"
(defrule lunge1
(declare (salience 4900))
(id-root ?id lunge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_kUxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lunge.clp 	lunge1   "  ?id "  Age_kUxa )" crlf))
)

;"lunge","VT","1.Age_kUxanA"
;He lunged forweard to catch the rope.
;
