
(defrule overdose0
(declare (salience 5000))
(id-root ?id overdose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika_mAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overdose.clp 	overdose0   "  ?id "  aXika_mAwrA )" crlf))
)

;"overdose","N","1.aXika_mAwrA"
;She took an overdose of Aspirin 
;
(defrule overdose1
(declare (salience 4900))
(id-root ?id overdose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika_mAwrA_meM_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overdose.clp 	overdose1   "  ?id "  aXika_mAwrA_meM_xe )" crlf))
)

;"overdose","VT","1.aXika_mAwrA_meM_xenA"
;He overdosed on liquor && became unconscious
;
