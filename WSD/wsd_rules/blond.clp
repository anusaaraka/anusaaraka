
(defrule blond0
(declare (salience 5000))
(id-root ?id blond)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sunaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blond.clp 	blond0   "  ?id "  sunaharA )" crlf))
)

;"blond","Adj","1.sunaharA"
;Blond Scandinavians
;
(defrule blond1
(declare (salience 4900))
(id-root ?id blond)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gore_SarIra_va_nIlI_AzKa_vAlA_manuRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blond.clp 	blond1   "  ?id "  gore_SarIra_va_nIlI_AzKa_vAlA_manuRya )" crlf))
)

;"blond","N","1.gore_SarIra_va_nIlI_AzKa_vAlA_manuRya"
