
(defrule rim0
(declare (salience 5000))
(id-root ?id rim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rim.clp 	rim0   "  ?id "  kinArA )" crlf))
)

;"rim","N","1.kinArA"
;She bought a fruit bowl with gold rim.
;
(defrule rim1
(declare (salience 4900))
(id-root ?id rim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rim.clp 	rim1   "  ?id "  kinArA_lagA )" crlf))
)

;"rim","VT","1.kinArA_lagAnA"
;Her beautiful gown is rimmed with frills.
;
