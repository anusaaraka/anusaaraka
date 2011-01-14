
(defrule garnish0
(declare (salience 5000))
(id-root ?id garnish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_BI_KAne_kI_cIja_jisase_Bojana_ko_sajAyA_jAwA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  garnish.clp 	garnish0   "  ?id "  kuCa_BI_KAne_kI_cIja_jisase_Bojana_ko_sajAyA_jAwA_hE )" crlf))
)

;"garnish","N","1.kuCa_BI_KAne_kI_cIja_jisase_Bojana_ko_sajAyA_jAwA_hE"
;A garnish of onion && cucumber slices were used to decorate the dish.
;
(defrule garnish1
(declare (salience 4900))
(id-root ?id garnish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaMkqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  garnish.clp 	garnish1   "  ?id "  alaMkqwa_kara )" crlf))
)

;"garnish","V","1.alaMkqwa_karanA"
;The table was garnished with flowers.
;
