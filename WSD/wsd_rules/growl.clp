
(defrule growl0
(declare (salience 5000))
(id-root ?id growl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gurrAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  growl.clp 	growl0   "  ?id "  gurrAhata )" crlf))
)

;"growl","N","1.gurrAhata"
;I get scared by the growl of dogs.
;
(defrule growl1
(declare (salience 4900))
(id-root ?id growl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gurrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  growl.clp 	growl1   "  ?id "  gurrA )" crlf))
)

;"growl","V","1.gurrAnA"
;The dog growled on seeing a stranger.
;
