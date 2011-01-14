
(defrule caricature0
(declare (salience 5000))
(id-root ?id caricature)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAsya_ciwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  caricature.clp 	caricature0   "  ?id "  hAsya_ciwra )" crlf))
)

;"caricature","N","1.hAsya_ciwra"
;Caricatures of famous pesonalities arouses laughter.
;
(defrule caricature1
(declare (salience 4900))
(id-root ?id caricature)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAsya_ciwra_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  caricature.clp 	caricature1   "  ?id "  hAsya_ciwra_banA )" crlf))
)

;"caricature","VT","1.hAsya_ciwra_banAnA"
;A cartoonist can caricature famous personalities also.
;
