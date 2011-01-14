
(defrule shoulder0
(declare (salience 5000))
(id-root ?id shoulder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kanXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shoulder.clp 	shoulder0   "  ?id "  kanXA )" crlf))
)

;"shoulder","N","1.kanXA"
;He had a injury in his shoulder.
;--"2.kamIjZa_kA_kazXA"
;The shoulders of his newly bought shirt were black in color.
;
(defrule shoulder1
(declare (salience 4900))
(id-root ?id shoulder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kazXA_para_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shoulder.clp 	shoulder1   "  ?id "  kazXA_para_uTA )" crlf))
)

;"shoulder","V","1.kazXA_para_uTAnA{BAra}"
;He shouldered the responsibility of his brother's children after his brother's death.
;
