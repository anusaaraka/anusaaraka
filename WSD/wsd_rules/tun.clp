
(defrule tun0
(declare (salience 5000))
(id-root ?id tun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_badZA_pIpA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tun.clp 	tun0   "  ?id "  eka_badZA_pIpA )" crlf))
)

;"tun","N","1.eka_badZA_pIpA"
;The soldiers rolled the tuns.
;
(defrule tun1
(declare (salience 4900))
(id-root ?id tun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIpoM_meM_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tun.clp 	tun1   "  ?id "  pIpoM_meM_raKa )" crlf))
)

;"tun","VT","1.pIpoM_meM_raKanA"
;Tun the grains before it rains.
;
