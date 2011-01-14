
(defrule trudge0
(declare (salience 5000))
(id-root ?id trudge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEra_GissU_cAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trudge.clp 	trudge0   "  ?id "  pEra_GissU_cAla )" crlf))
)

;"trudge","N","1.pEra_GissU_cAla"
;Finally it was a trudge for the trekkers.
;
(defrule trudge1
(declare (salience 4900))
(id-root ?id trudge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XIre_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trudge.clp 	trudge1   "  ?id "  XIre_cala )" crlf))
)

;"trudge","V","1.XIre_calanA"
;The mountaineers are trudging through the snow.
;
