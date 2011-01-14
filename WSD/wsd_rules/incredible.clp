
(defrule incredible0
(declare (salience 5000))
(id-root ?id incredible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aviSvasanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  incredible.clp 	incredible0   "  ?id "  aviSvasanIya )" crlf))
)

(defrule incredible1
(declare (salience 4900))
(id-root ?id incredible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aviSvasanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  incredible.clp 	incredible1   "  ?id "  aviSvasanIya )" crlf))
)

;"incredible","N","1.aviSvasanIya"
;He has most incredible good luck.
;
;
