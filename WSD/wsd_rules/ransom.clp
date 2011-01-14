
(defrule ransom0
(declare (salience 5000))
(id-root ?id ransom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PirOwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ransom.clp 	ransom0   "  ?id "  PirOwI )" crlf))
)

;"ransom","N","1.PirOwI"
;Pay them ransom && bring the child back.
;
(defrule ransom1
(declare (salience 4900))
(id-root ?id ransom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CudZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ransom.clp 	ransom1   "  ?id "  CudZA )" crlf))
)

;"ransom","VT","1.CudZAnA"
;Even after paying a demanded ransom,she could not get her husband.
;
