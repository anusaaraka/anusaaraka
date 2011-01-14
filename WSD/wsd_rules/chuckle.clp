
(defrule chuckle0
(declare (salience 5000))
(id-root ?id chuckle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabI_huI_hazsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chuckle.clp 	chuckle0   "  ?id "  xabI_huI_hazsI )" crlf))
)

;"chuckle","N","1.xabI_huI_hazsI"
;She gave a chuckle while reading the witty story.
;
(defrule chuckle1
(declare (salience 4900))
(id-root ?id chuckle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka_ke_hazsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chuckle.clp 	chuckle1   "  ?id "  ruka_ke_hazsa )" crlf))
)

;"chuckle","VI","1.ruka_ke_hazsanA"
;She chuckled while reading the witty story.
;
