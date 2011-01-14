
(defrule rupture0
(declare (salience 5000))
(id-root ?id rupture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rupture.clp 	rupture0   "  ?id "  xarAra )" crlf))
)

;"rupture","N","1.xarAra"
;There is a deep rupture between our friendship due to some misunderstanding.
;
(defrule rupture1
(declare (salience 4900))
(id-root ?id rupture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rupture.clp 	rupture1   "  ?id "  Pata )" crlf))
)

;"rupture","VI","1.PatanA"
;Her appendix got ruptured.
;
