
(defrule sandwich0
(declare (salience 5000))
(id-root ?id sandwich)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sEMdavica))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sandwich.clp 	sandwich0   "  ?id "  sEMdavica )" crlf))
)

;"sandwich","N","1.sEMdavica"
;I like cucumber sandwiches.
;
(defrule sandwich1
(declare (salience 4900))
(id-root ?id sandwich)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIca_meM_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sandwich.clp 	sandwich1   "  ?id "  bIca_meM_raKa )" crlf))
)

;"sandwich","V","1.bIca_meM_raKanA{xo_pAtoM_ke}"
;He was sandwiched between two trucks && died.
;
