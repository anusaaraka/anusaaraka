
(defrule twig0
(declare (salience 5000))
(id-root ?id twig)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tahanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twig.clp 	twig0   "  ?id "  tahanI )" crlf))
)

;"twig","N","1.tahanI"
;The path was full of dried twigs.
;
(defrule twig1
(declare (salience 4900))
(id-root ?id twig)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twig.clp 	twig1   "  ?id "  samaJa_jA )" crlf))
)

;"twig","V","1.samaJa_jAnA"
;He took a long time to twig the answer.
;
