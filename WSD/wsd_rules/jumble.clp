
(defrule jumble0
(declare (salience 5000))
(id-root ?id jumble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avyavasWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jumble.clp 	jumble0   "  ?id "  avyavasWA )" crlf))
)

;"jumble","N","1.avyavasWA"
;My  room is in a jumble.
;
(defrule jumble1
(declare (salience 4900))
(id-root ?id jumble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jumble.clp 	jumble1   "  ?id "  milA )" crlf))
)

;"jumble","VT","1.milAnA"
;He jumbled up the words while giving a speech.
;
