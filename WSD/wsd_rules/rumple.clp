
(defrule rumple0
(declare (salience 5000))
(id-root ?id rumple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikudZana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rumple.clp 	rumple0   "  ?id "  sikudZana )" crlf))
)

;"rumple","N","1.sikudZana"
;She removed rumples from her bed.
;
(defrule rumple1
(declare (salience 4900))
(id-root ?id rumple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikudZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rumple.clp 	rumple1   "  ?id "  sikudZa )" crlf))
)

;"rumple","VT","1.sikudZanA"
;Her face rumpled up && she began to cry.
;
