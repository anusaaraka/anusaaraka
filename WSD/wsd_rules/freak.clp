
(defrule freak0
(declare (salience 5000))
(id-root ?id freak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ajIba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  freak.clp 	freak0   "  ?id "  ajIba )" crlf))
)

;"freak","N","1.ajIba"
;It was a freak accident.
;
(defrule freak1
(declare (salience 4900))
(id-root ?id freak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaXika_prawikriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  freak.clp 	freak1   "  ?id "  awyaXika_prawikriyA )" crlf))
)

;"freak","V","1.awyaXika_prawikriyA"
;My friends freaked out when they saw my shaven head.
;
