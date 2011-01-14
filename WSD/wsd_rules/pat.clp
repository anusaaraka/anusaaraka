
(defrule pat0
(declare (salience 5000))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anukUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat0   "  ?id "  anukUla )" crlf))
)

;"pat","Adj","1.anukUla"
;Her pat reaction revealed her presence of mind.
;
(defrule pat1
(declare (salience 4900))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wuraMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat1   "  ?id "  wuraMwa )" crlf))
)

;"pat","Adv","1.wuraMwa"
;Before I asked the question pat came the reply.
;
(defrule pat2
(declare (salience 4800))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WapakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat2   "  ?id "  WapakI )" crlf))
)

;"pat","N","1.WapakI"
;He was given a pat on his back for his courageous feat.
;
(defrule pat3
(declare (salience 4700))
(id-root ?id pat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WapaWapA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pat.clp 	pat3   "  ?id "  WapaWapA )" crlf))
)

;"pat","VT","1.WapaWapAnA"
;She patted the baby to sleep.
;
