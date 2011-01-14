
(defrule snow0
(declare (salience 5000))
(id-root ?id snow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baraPZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snow.clp 	snow0   "  ?id "  baraPZa )" crlf))
)

;"snow","N","1.baraPZa/hima"
;The children are playing with snow.
;
(defrule snow1
(declare (salience 4900))
(id-root ?id snow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baraPZa_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snow.clp 	snow1   "  ?id "  baraPZa_gira )" crlf))
)

;"snow","V","1.baraPZa_giranAra"
;It was snowing when I wokeup.
;
