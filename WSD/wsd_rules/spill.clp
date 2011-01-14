


;Added by Meena(5.02.10)
;She knocked my cup and the coffee spilled.
(defrule spill0
(declare (salience 4900))
(id-root ?id spill)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 coffee|tea|milk|water)
(kriyA-subject ?id ?id1 )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Calaka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spill.clp     spill0   "  ?id "  Calaka_jA )" crlf))
)



;Salience reduced by Meena(5.02.10)
(defrule spill1
;(declare (salience 5000))
(declare (salience 0))
(id-root ?id spill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Calaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spill.clp 	spill1   "  ?id "  Calaka )" crlf))
)

;"spill","VI","1.CalakanA"
;I knocked my mug && the coffee spilled.




;Salience reduced by Meena(5.02.10)
;How much more oil did they spill ?
(defrule spill2
(declare (salience 4900))
;(declare (salience 0))
(id-root ?id spill)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CalakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spill.clp 	spill2   "  ?id "  CalakA )" crlf))
)

;"spill","VT","1.CalakAnA"
;The would be bride spilled tea on boy's parents.
;
