
(defrule squeal0
(declare (salience 5000))
(id-root ?id squeal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kilakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squeal.clp 	squeal0   "  ?id "  kilakArI )" crlf))
)

;"squeal","N","1.kilakArI"
;The squeal of the mice could be heard from quite a distance.
;
(defrule squeal1
(declare (salience 4900))
(id-root ?id squeal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cillA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squeal.clp 	squeal1   "  ?id "  cillA )" crlf))
)

;"squeal","V","1.cillAnA"
;The police caught the track as one of the employees squealed about it.
;
