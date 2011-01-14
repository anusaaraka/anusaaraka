
(defrule paste0
(declare (salience 5000))
(id-root ?id paste)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id leI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paste.clp 	paste0   "  ?id "  leI )" crlf))
)

;"paste","N","1.leI"
;Close the envelope with the paste.
;--"2.lasaxAra_miSraNa"
;Turmeric && sandalwood paste works as a good antiseptic.
;
(defrule paste1
(declare (salience 4900))
(id-root ?id paste)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cipakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paste.clp 	paste1   "  ?id "  cipakA )" crlf))
)

;"paste","VT","1.cipakAnA"
;Let's paste the posters on the walls.
;
