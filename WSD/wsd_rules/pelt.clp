
(defrule pelt0
(declare (salience 5000))
(id-root ?id pelt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pelt.clp 	pelt0   "  ?id "  KAla )" crlf))
)

;"pelt","N","1.KAla"
;The pelts of dead foxes are good for making leather belts.
;
(defrule pelt1
(declare (salience 4900))
(id-root ?id pelt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PZeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pelt.clp 	pelt1   "  ?id "  PZeMka )" crlf))
)

;"pelt","V","1.PZeMkanA/PZeMkakara_mAranA"
;A wild barking dog entered the school compound && we pelted stones on it to drive away.
;
