
(defrule shiver0
(declare (salience 5000))
(id-root ?id shiver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kampana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shiver.clp 	shiver0   "  ?id "  kampana )" crlf))
)

;"shiver","N","1.kampana"
;The frightening incident gave him a terrible shivers.
;
(defrule shiver1
(declare (salience 4900))
(id-root ?id shiver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAzpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shiver.clp 	shiver1   "  ?id "  kAzpa )" crlf))
)

;"shiver","V","1.kAzpanA"
;She shivered in horror.
;
