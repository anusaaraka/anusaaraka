
(defrule haul0
(declare (salience 5000))
(id-root ?id haul)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAyA_huA_mAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  haul.clp 	haul0   "  ?id "  pAyA_huA_mAla )" crlf))
)

;"haul","N","1.pAyA_huA_mAla"
;The bandits came back with a rich haul
;dAkU awyaXika pAye hue mAla ke sAWa lOte.
;
(defrule haul1
(declare (salience 4900))
(id-root ?id haul)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIMca_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  haul.clp 	haul1   "  ?id "  KIMca_nikAla )" crlf))
)

;"haul","V","1.KIMca_nikAlanA{badZI_mAwrA_meM}"
;With great difficulty we could haul our car out of the ravine .
;badZI pareSAnI ke sAWa hama apanI gAdZI ko gadDe se bAhara Xakela pAye.
;
