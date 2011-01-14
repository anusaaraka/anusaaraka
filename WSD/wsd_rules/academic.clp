
(defrule academic0
(declare (salience 5000))
(id-root ?id academic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SEkRaNika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  academic.clp 	academic0   "  ?id "  SEkRaNika )" crlf))
)

(defrule academic1
(declare (salience 4900))
(id-root ?id academic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ucca_SreNI_kA_SikRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  academic.clp 	academic1   "  ?id "  ucca_SreNI_kA_SikRaka )" crlf))
)

;"academic","N","1.ucca_SreNI_kA_SikRaka"
;Mr.Anand is an academic person.
;
;
