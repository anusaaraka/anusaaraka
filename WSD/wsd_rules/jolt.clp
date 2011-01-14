
(defrule jolt0
(declare (salience 5000))
(id-root ?id jolt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JatakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jolt.clp 	jolt0   "  ?id "  JatakA )" crlf))
)

(defrule jolt1
(declare (salience 4900))
(id-root ?id jolt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jolt.clp 	jolt1   "  ?id "  hilA )" crlf))
)

;"jolt","VT","1.hilAnA"
;The bomb explosion jolted the entire building.
;
;