
(defrule success0
(declare (salience 500))
(id-root ?id success)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPalawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  success.clp 	success0   "  ?id "  saPalawA )" crlf))
)



(defrule success1
(declare (salience 5000))
(id-root ?id success)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?sub ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  success.clp    success1   "  ?id "  saPala )" crlf))
)


