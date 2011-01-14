
(defrule weather0
(declare (salience 5000))
(id-root ?id weather)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mOsama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weather.clp 	weather0   "  ?id "  mOsama )" crlf))
)

;"weather","N","1.mOsama"
;Let's go out.The weather is pleasant now.
;
(defrule weather1
(declare (salience 4900))
(id-root ?id weather)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KulI_havA_ke_praBAva_ko_Jela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weather.clp 	weather1   "  ?id "  KulI_havA_ke_praBAva_ko_Jela )" crlf))
)

;"weather","VTI","1.KulI_havA_ke_praBAva_ko_JelanA"
;You buy a suite that weathers well.
;--"2.pAra_karanA"
;She weathered the crisis well.
;
