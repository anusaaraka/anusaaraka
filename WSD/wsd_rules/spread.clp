
(defrule spread0
(declare (salience 5000))
(id-root ?id spread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PElAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spread.clp 	spread0   "  ?id "  PElAva )" crlf))
)




;Meaning changed from PElA  to PEla_jA by Meena(19.10.09)
;Fanned by a strong wind, the fire spread rapidly through the city.
(defrule spread1
(declare (salience 4900))
(id-root ?id spread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spread.clp 	spread1   "  ?id "  PEla_jA )" crlf))
)





;"spread","V","1.PElAnA"
;Spead Jam on the bread && then eat.
;
;
