
(defrule fuel0
(declare (salience 5000))
(id-root ?id fuel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id IMXana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fuel.clp 	fuel0   "  ?id "  IMXana )" crlf))
)

;"fuel","N","1.IMXana"
;Fuel is used for cooking.
;
(defrule fuel1
(declare (salience 4900))
(id-root ?id fuel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id IMXana_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fuel.clp 	fuel1   "  ?id "  IMXana_dAla )" crlf))
)

;"fuel","V","1.IMXana_dAlanA"
;We must fuel [up] our car before a long trip.
;
