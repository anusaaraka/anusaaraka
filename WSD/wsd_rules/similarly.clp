
(defrule similarly0
(declare (salience 5000))
(id-root ?id similarly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  similarly.clp 	similarly0   "  ?id "  samAna_rUpa_se )" crlf))
)

;"similarly","Adj","1.samAna_rUpa_se/usI_prakAra_se"
;Those two friends dress similarly.
;
(defrule similarly1
(declare (salience 4900))
(id-root ?id similarly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isI_waraha_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  similarly.clp 	similarly1   "  ?id "  isI_waraha_se )" crlf))
)

;"similarly","Adv","1.isI_waraha_se"
