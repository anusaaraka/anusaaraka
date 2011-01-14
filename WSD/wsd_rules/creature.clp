;Added by Meena (21.10.09)
;She was an exotic creature with long red hair and brilliant green eyes.
;(defrule creature0
;(declare (salience 3900))
;(id-root ?id creature)
;?mng <-(meaning_to_be_decided ?id)
;(viSeRya-viSeRaNa  ?id ?id1)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id vyakwi))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  creature.clp      creature0    "  ?id "  vyakwi )" crlf)
;)
;)


;Added by Meena(21.10.09)
;It did not resemble any living creature.
(defrule creature1
(declare (salience 3900))
(id-root ?id creature)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
;(id-word ?id1 living)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prANI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  creature.clp      creature1    "  ?id "  prANI )" crlf)
)
)
