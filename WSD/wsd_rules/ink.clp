
(defrule ink0
(declare (salience 5000))
(id-root ?id ink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id syAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ink.clp 	ink0   "  ?id "  syAhI )" crlf))
)

;"ink","N","1.syAhI"
;The boy bought ink from the shop.
;
(defrule ink1
(declare (salience 4900))
(id-root ?id ink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id syAhI_Pera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ink.clp 	ink1   "  ?id "  syAhI_Pera )" crlf))
)

;"ink","VT","1.syAhI_PeranA"
;Ink the roller of the zerox machine.
;
