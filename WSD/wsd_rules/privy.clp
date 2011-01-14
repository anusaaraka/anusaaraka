
(defrule privy0
(declare (salience 5000))
(id-root ?id privy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gupwa_jAnakArI_ke_saMbanXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  privy.clp 	privy0   "  ?id "  gupwa_jAnakArI_ke_saMbanXiwa )" crlf))
)

;"privy","Adj","1.gupwa_jAnakArI_ke_saMbanXiwa"
;Ram was privy to the illegal negotiations.
;
(defrule privy1
(declare (salience 4900))
(id-root ?id privy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SOcagqha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  privy.clp 	privy1   "  ?id "  SOcagqha )" crlf))
)

;"privy","N","1.SOcagqha"
;Voluntery organizations are building privies in slum areas.
;
