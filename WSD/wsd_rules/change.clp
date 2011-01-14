
(defrule change0
(declare (salience 5000))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivarwana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  change.clp 	change0   "  ?id "  parivarwana )" crlf))
)





;Salience reduced by Meena(26.8.10)
(defrule change1
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  change.clp 	change1   "  ?id "  baxala_jA )" crlf))
)




(defrule change2
(declare (salience 4800))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  change.clp 	change2   "  ?id "  baxala )" crlf))
)

(defrule change3
(declare (salience 4700))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  change.clp 	change3   "  ?id "  baxala )" crlf))
)

;"change","V","1.baxala_jAnA"
;His voice began to change when he was 14 years old
;
;
