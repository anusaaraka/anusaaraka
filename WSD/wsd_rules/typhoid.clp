
(defrule typhoid0
(declare (salience 5000))
(id-root ?id typhoid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mowIJarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  typhoid.clp 	typhoid0   "  ?id "  mowIJarA )" crlf))
)

;"typhoid","Adj","1.mowIJarA"
;She is suffering from Typhoid fever.
;
(defrule typhoid1
(declare (salience 4900))
(id-root ?id typhoid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mowIJarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  typhoid.clp 	typhoid1   "  ?id "  mowIJarA )" crlf))
)

;"typhoid","N","1.mowIJarA"
;Typhoid should be checked immediately.
;
