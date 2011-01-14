
(defrule debit0
(declare (salience 5000))
(id-root ?id debit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyaya_pakRa_ora_kA_leKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debit.clp 	debit0   "  ?id "  vyaya_pakRa_ora_kA_leKa )" crlf))
)

;"debit","N","1.vyaya_pakRa_ora_kA_leKa/2.qNa/uXAra"
(defrule debit1
(declare (salience 4900))
(id-root ?id debit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uXAra_liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debit.clp 	debit1   "  ?id "  uXAra_liKa )" crlf))
)

;"debit","VT","1.uXAra_liKanA/Karca_ke_maxa_meM_liKanA"
