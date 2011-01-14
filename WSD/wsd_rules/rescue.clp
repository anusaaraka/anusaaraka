
(defrule rescue0
(declare (salience 5000))
(id-root ?id rescue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxXAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rescue.clp 	rescue0   "  ?id "  uxXAra )" crlf))
)

;"rescue","N","1.uxXAra"
;A wealthy sponsor came to our rescue with a generous donation.
;
(defrule rescue1
(declare (salience 4900))
(id-root ?id rescue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rescue.clp 	rescue1   "  ?id "  bacA )" crlf))
)

;"rescue","VT","1.bacAnA"
;Rescue a child from drowning.
;
