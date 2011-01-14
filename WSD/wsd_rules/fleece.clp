
(defrule fleece0
(declare (salience 5000))
(id-root ?id fleece)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnavaroM_ke_SarIra_kI_Una))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fleece.clp 	fleece0   "  ?id "  jAnavaroM_ke_SarIra_kI_Una )" crlf))
)

;"fleece","N","1.jAnavaroM_ke_SarIra_kI_Una"
;Blankets are made of fleece from sheep.
;
(defrule fleece1
(declare (salience 4900))
(id-root ?id fleece)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xana_haWiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fleece.clp 	fleece1   "  ?id "  Xana_haWiyA )" crlf))
)

;"fleece","V","1.Xana_haWiyAnA"
;He was so simple that his friends slowly fleeced him of his inheritance.
;
