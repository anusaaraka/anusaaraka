
(defrule fore0
(declare (salience 5000))
(id-root ?id fore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fore.clp 	fore0   "  ?id "  Age_kA )" crlf))
)

;"fore","Adj","1.Age_kA"
;The fore part of the car was damaged in the accident.
;
(defrule fore1
(declare (salience 4900))
(id-root ?id fore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fore.clp 	fore1   "  ?id "  Age )" crlf))
)

;"fore","Adv","1.Age/sAmane"
;He came to the fore to address the audience.
;
