
(defrule neutral0
(declare (salience 5000))
(id-root ?id neutral)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id watasWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neutral.clp 	neutral0   "  ?id "  watasWa )" crlf))
)

;"neutral","Adj","1.watasWa"
;He is a neutral person.
;
(defrule neutral1
(declare (salience 4900))
(id-root ?id neutral)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niRpakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neutral.clp 	neutral1   "  ?id "  niRpakRa )" crlf))
)

;"neutral","N","1.niRpakRa"
;That country supports all the countries which are neutral.
;
