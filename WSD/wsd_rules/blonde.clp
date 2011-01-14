
(defrule blonde0
(declare (salience 5000))
(id-root ?id blonde)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sunaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blonde.clp 	blonde0   "  ?id "  sunaharA )" crlf))
)

;"blonde","Adj","1.sunaharA"
(defrule blonde1
(declare (salience 4900))
(id-root ?id blonde)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gore_SarIra_va_nIlI_AzKa_vAlI_swrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blonde.clp 	blonde1   "  ?id "  gore_SarIra_va_nIlI_AzKa_vAlI_swrI )" crlf))
)

;"blonde","N","1.gore_SarIra_va_nIlI_AzKa_vAlI_swrI"
