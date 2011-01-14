
(defrule flour0
(declare (salience 5000))
(id-root ?id flour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AtA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flour.clp 	flour0   "  ?id "  AtA )" crlf))
)

;"flour","N","1.AtA"
;He went to the flour mill to get the grain ground.
;
(defrule flour1
(declare (salience 4900))
(id-root ?id flour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ate_meM_lapeta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flour.clp 	flour1   "  ?id "  Ate_meM_lapeta )" crlf))
)

;"flour","V","1.Ate_meM_lapetanA"
;Cutlets are floured before frying.
;
