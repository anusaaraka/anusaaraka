
(defrule extra0
(declare (salience 5000))
(id-root ?id extra)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extra.clp 	extra0   "  ?id "  aXika )" crlf))
)

;"extra","Adj","1.aXika"
;He always carried extra medicines in case of an emergency.
;An extra fast car
;
(defrule extra1
(declare (salience 4900))
(id-root ?id extra)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awirikwa_vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extra.clp 	extra1   "  ?id "  awirikwa_vaswu )" crlf))
)

;"extra","N","1.awirikwa_vaswu"
;He always carried extras in case of an emergency
;
