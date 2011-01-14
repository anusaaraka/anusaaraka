
(defrule streak0
(declare (salience 5000))
(id-root ?id streak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laMbI_va_pawalI_lakIra_yA_XArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  streak.clp 	streak0   "  ?id "  laMbI_va_pawalI_lakIra_yA_XArI )" crlf))
)

;"streak","N","1.laMbI_va_pawalI_lakIra_yA_XArI"
;Zebra has black streaks on its body.
;
(defrule streak1
(declare (salience 4900))
(id-root ?id streak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XAriyAz_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  streak.clp 	streak1   "  ?id "  XAriyAz_banA )" crlf))
)

;"streak","V","1.XAriyAz_banAnA"
;To get hair streaked in different colours has become a fashion now a days.
;
