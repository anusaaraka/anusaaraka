
(defrule stealth0
(declare (salience 5000))
(id-root ?id stealth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id havAI_jZahAjZa_se_sambanXiwa_wakanIkI_SAKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stealth.clp 	stealth0   "  ?id "  havAI_jZahAjZa_se_sambanXiwa_wakanIkI_SAKA )" crlf))
)

;"stealth","Adj","1.havAI_jZahAjZa_se_sambanXiwa_wakanIkI_SAKA"
;The invention of the stealth aircraft would pheavel the defense mechanism of the country.
;
(defrule stealth1
(declare (salience 4900))
(id-root ?id stealth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CupAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stealth.clp 	stealth1   "  ?id "  CupAva )" crlf))
)

;"stealth","N","1.CupAva"
;Intruders operate by stealth.
;
