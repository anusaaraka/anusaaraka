
(defrule cordial0
(declare (salience 5000))
(id-root ?id cordial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sOhArxapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cordial.clp 	cordial0   "  ?id "  sOhArxapUrNa )" crlf))
)

;"cordial","Adj","1.sOhArxapUrNa"
;They gave us a cordial reception.
;
(defrule cordial1
(declare (salience 4900))
(id-root ?id cordial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cordial.clp 	cordial1   "  ?id "  peya )" crlf))
)

;"cordial","N","1.peya{mana_praPulliwa_karane_vAlA}"
;They served pineapple juice cordial.
;
