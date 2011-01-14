
(defrule sandbag0
(declare (salience 5000))
(id-root ?id sandbag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAlU-WElI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sandbag.clp 	sandbag0   "  ?id "  bAlU-WElI )" crlf))
)

;"sandbag","N","1.bAlU-WElI"
;Sandbags are used as a defence against raising floods.
;
(defrule sandbag1
(declare (salience 4900))
(id-root ?id sandbag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAlU-WElI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sandbag.clp 	sandbag1   "  ?id "  bAlU-WElI_lagA )" crlf))
)

;"sandbag","V","1.bAlU-WElI_lagAnA"
;Sandbag the doorway to keep the water out.
;
