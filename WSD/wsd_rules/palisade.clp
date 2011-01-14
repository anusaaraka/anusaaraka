
(defrule palisade0
(declare (salience 5000))
(id-root ?id palisade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kataGarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  palisade.clp 	palisade0   "  ?id "  kataGarA )" crlf))
)

;"palisade","N","1.kataGarA"
;They have made a strong palisade around their farm. 
;unhoMne eka majabUwa kataGarA Kewa ke cAroM ora banAyA.
;
(defrule palisade1
(declare (salience 4900))
(id-root ?id palisade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kataGarA_ba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  palisade.clp 	palisade1   "  ?id "  kataGarA_ba )" crlf))
)

;"palisade","VT","1.kataGarA_banA"
;In olden days people use to palisade their houses.
;prAcIna kAla meM loga GaroM ke cAroM ora nokaxAra lakadZiyoM kA bAdZA lagAwe We.
;
