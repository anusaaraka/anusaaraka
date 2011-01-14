
(defrule quip0
(declare (salience 5000))
(id-root ?id quip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cutakulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quip.clp 	quip0   "  ?id "  cutakulA )" crlf))
)

;"quip","N","1.cutakulA"
;His speech was concluded with a quip.
;
(defrule quip1
(declare (salience 4900))
(id-root ?id quip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cutakulA_kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quip.clp 	quip1   "  ?id "  cutakulA_kaha )" crlf))
)

;"quip","VTI","1.cutakulA_kahanA"
;'Chicago is not a good town',quipped Taylor.
;
