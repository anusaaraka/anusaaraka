
(defrule dock0
(declare (salience 5000))
(id-root ?id dock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dock.clp 	dock0   "  ?id "  GAta )" crlf))
)

;"dock","N","1.GAta/jahAja_goxAma"
;--"2.kataGarA"
;
(defrule dock1
(declare (salience 4900))
(id-root ?id dock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAta_meM_KadZA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dock.clp 	dock1   "  ?id "  GAta_meM_KadZA_kara )" crlf))
)

;"dock","VI","1.GAta_meM_KadZA_karanA/jahAja_goxAma_meM_raKanA"
;Dock the ships
;
