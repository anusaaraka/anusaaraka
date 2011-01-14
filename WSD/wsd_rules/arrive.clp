(defrule arrive1
(declare (salience 4900))
(id-root ?id arrive)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ?)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca_jA))
;(assert (id-wsd_root ?id send))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrive.clp    arrive1   "  ?id "  pahuzca_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  arrive.clp    arrive1   "  ?id " yA )" crlf))
)



