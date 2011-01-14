
(defrule position0
(declare (salience 5000))
(id-root ?id position)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWiwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  position.clp 	position0   "  ?id "  sWiwi )" crlf))
)

(defrule position1
(declare (salience 4900))
(id-root ?id position)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  position.clp 	position1   "  ?id "  raKa_xe )" crlf))
)

;"position","V","1.raKa xenA"
;Alarms are positioned at strategic points around the prison.
;
;