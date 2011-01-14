
(defrule brawl0
(declare (salience 5000))
(id-root ?id brawl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladZAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brawl.clp 	brawl0   "  ?id "  ladZAI )" crlf))
)

;"brawl","N","1.ladZAI"
;They were all involved in a street brawl.
;
(defrule brawl1
(declare (salience 4900))
(id-root ?id brawl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JagadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brawl.clp 	brawl1   "  ?id "  JagadZa )" crlf))
)

;"brawl","VT","1.JagadZanA"
;They don't mind brawling in the streets.
;
