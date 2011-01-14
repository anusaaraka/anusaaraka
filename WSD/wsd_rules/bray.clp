
(defrule bray0
(declare (salience 5000))
(id-root ?id bray)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id reMkanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bray.clp 	bray0   "  ?id "  reMkanA )" crlf))
)

;"bray","N","1.reMkanA"
;His bray gave him away.
;
(defrule bray1
(declare (salience 4900))
(id-root ?id bray)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id reMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bray.clp 	bray1   "  ?id "  reMka )" crlf))
)

;"bray","VT","1.reMkanA"
;The donkey started to bray rather loudly.
;
