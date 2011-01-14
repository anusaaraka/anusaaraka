
(defrule jostle0
(declare (salience 5000))
(id-root ?id jostle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XakkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jostle.clp 	jostle0   "  ?id "  XakkA )" crlf))
)

;"jostle","N","1.XakkA"
;I can't tolerate the jostle in the bus.
;
(defrule jostle1
(declare (salience 4900))
(id-root ?id jostle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XakkA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jostle.clp 	jostle1   "  ?id "  XakkA_xe )" crlf))
)

;"jostle","V","1.XakkA_xenA"
;We were jostled by the crowd.
;
