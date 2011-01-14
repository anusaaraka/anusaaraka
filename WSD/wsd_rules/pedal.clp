
(defrule pedal0
(declare (salience 5000))
(id-root ?id pedal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEdZala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pedal.clp 	pedal0   "  ?id "  pEdZala )" crlf))
)

;"pedal","N","1.pEdZala"
;Small boats are sometime driven by pedals.
;
(defrule pedal1
(declare (salience 4900))
(id-root ?id pedal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEdZala_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pedal.clp 	pedal1   "  ?id "  pEdZala_calA )" crlf))
)

;"pedal","V","1.pEdZala_calAnA"
;He was pedaling the bicycle very fast.
;
