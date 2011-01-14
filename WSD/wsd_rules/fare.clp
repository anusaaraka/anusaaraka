
(defrule fare0
(declare (salience 5000))
(id-root ?id fare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fare.clp 	fare0   "  ?id "  kirAyA )" crlf))
)

;"fare","N","1.kirAyA"
;I can't afford an air fare.
;--"2.KAnA"
;It was a simple && a wholesome fare.
;
(defrule fare1
(declare (salience 4900))
(id-root ?id fare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fare.clp 	fare1   "  ?id "  Age_jA )" crlf))
)

;"fare","VI","1.Age_jAnA/pragawi_karanA"
;He fared badly in exams.
;
