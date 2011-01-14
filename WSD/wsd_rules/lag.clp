
(defrule lag0
(declare (salience 5000))
(id-root ?id lag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilamba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lag.clp 	lag0   "  ?id "  bilamba )" crlf))
)

;"lag","N","1.bilamba"
;I understand this lag in the disposal of the file.
;
(defrule lag1
(declare (salience 4900))
(id-root ?id lag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lag.clp 	lag1   "  ?id "  piCada )" crlf))
)

;"lag","V","1.piCadanA"
;He is lagging belind is studies.
;
