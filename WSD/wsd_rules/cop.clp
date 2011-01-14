
(defrule cop0
(declare (salience 5000))
(id-root ?id cop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pulisa_OPisara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cop.clp 	cop0   "  ?id "  pulisa_OPisara )" crlf))
)

;"cop","N","1.pulisa_OPisara"
;He is a sincere cop.
;
(defrule cop1
(declare (salience 4900))
(id-root ?id cop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cop.clp 	cop1   "  ?id "  pakadZa )" crlf))
)

;"cop","V","1.pakadZa"
;He was copped for stealing.
;--"2.musIbawa_meM_padZanA"
;The heavy rain missed the south altogether but the north copped a lot.
;
