
(defrule herd0
(declare (salience 5000))
(id-root ?id herd)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paSuoM_kA_JuNda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  herd.clp 	herd0   "  ?id "  paSuoM_kA_JuNda )" crlf))
)

;"herd","N","1.paSuoM_kA_JuNda"
;gadariyA'herd' ke pICe jA rahA hE.
;
(defrule herd1
(declare (salience 4900))
(id-root ?id herd)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JuNda_meM_ekawriwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  herd.clp 	herd1   "  ?id "  JuNda_meM_ekawriwa_ho )" crlf))
)

;"herd","V","1.JuNda_meM_ekawriwa_honA"
;BedZeM sAzyakAla'herd'meM ekawriwa ho jAwI hE.
;
