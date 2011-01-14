
(defrule worse0
(declare (salience 5000))
(id-root ?id worse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika_KarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worse.clp 	worse0   "  ?id "  aXika_KarAba )" crlf))
)

;"worse","Adj","1.aXika_KarAba"
;Your handwriting is worse than mine.
;
(defrule worse1
(declare (salience 4900))
(id-root ?id worse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora_BI_bure_prakAra_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worse.clp 	worse1   "  ?id "  Ora_BI_bure_prakAra_se )" crlf))
)

;"worse","Adv","1.Ora_BI_bure_prakAra_se"
;It is raining worse than ever.
;
(defrule worse2
(declare (salience 4800))
(id-root ?id worse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora_burA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worse.clp 	worse2   "  ?id "  Ora_burA )" crlf))
)

;"worse","N","1.Ora_burA"
;I have worse to tell you.
;
