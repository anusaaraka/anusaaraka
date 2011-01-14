
(defrule snowball0
(declare (salience 5000))
(id-root ?id snowball)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hima_golA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snowball.clp 	snowball0   "  ?id "  hima_golA )" crlf))
)

;"snowball","N","1.hima_golA"
;Children are playing by throwing snowballs.
;
(defrule snowball1
(declare (salience 4900))
(id-root ?id snowball)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZora_pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snowball.clp 	snowball1   "  ?id "  jZora_pakadZa )" crlf))
)

;"snowball","V","1.jZora_pakadZanA"
;The news snowballed very quickly in the city.
;
