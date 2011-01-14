
(defrule fracture0
(declare (salience 5000))
(id-root ?id fracture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tUtanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fracture.clp 	fracture0   "  ?id "  tUtanA )" crlf))
)

;"fracture","N","1.tUtanA/BaMjana"
;He has a collorbone fracture.
;
(defrule fracture1
(declare (salience 4900))
(id-root ?id fracture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tUta_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fracture.clp 	fracture1   "  ?id "  tUta_jA )" crlf))
)

;"fracture","VI","1.tUta_jAnA"
;His leg is fractured.
;
(defrule fracture2
(declare (salience 4800))
(id-root ?id fracture)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fracture.clp 	fracture2   "  ?id "  wodZa_xe )" crlf))
)

(defrule fracture3
(declare (salience 4700))
(id-root ?id fracture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wodZa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fracture.clp 	fracture3   "  ?id "  wodZa_le )" crlf))
)

;"fracture","VT","1.wodZa_lenA[xenA]"
;He has fractured his leg in the accident.
;
