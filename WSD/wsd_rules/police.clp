
(defrule police0
(declare (salience 5000))
(id-root ?id police)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pulIsa))
(assert (id-wsd_number ?id s));Added by sheetal
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  police.clp 	police0   "  ?id "  pulIsa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number   " ?*wsd_dir* "  police.clp    police0   "  ?id "  s )" crlf))
)

;"police","N","1.pulIsa"
;He informed the police about the robbery.
;
(defrule police1
(declare (salience 4900))
(id-root ?id police)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nigarAnI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  police.clp 	police1   "  ?id "  nigarAnI_raKa )" crlf))
)

;"police","V","1.nigarAnI_raKanA"
;They are policing all the entry points to the city.
;
