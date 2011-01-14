
(defrule grouse0
(declare (salience 5000))
(id-root ?id grouse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_prakAra_kA_pakRI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grouse.clp 	grouse0   "  ?id "  eka_prakAra_kA_pakRI )" crlf))
)

;"grouse","N","1.eka_prakAra_kA_pakRI"
;The hunters killed the grouse && roasted it.
;
(defrule grouse1
(declare (salience 4900))
(id-root ?id grouse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotI-CotI_bAwoM_kI_SikAyawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grouse.clp 	grouse1   "  ?id "  CotI-CotI_bAwoM_kI_SikAyawa_kara )" crlf))
)

;"grouse","V","1.CotI-CotI_bAwoM_kI_SikAyawa_karanA"
;Our maidservant keeps grousing to my mother.
;
