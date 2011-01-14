
(defrule husk0
(declare (salience 5000))
(id-root ?id husk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CilakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  husk.clp 	husk0   "  ?id "  CilakA )" crlf))
)

;"husk","N","1.CilakA"
;nAriyala ke 'husk' se waraha waraha kI vaswuez banawI hEM.
;
(defrule husk1
(declare (salience 4900))
(id-root ?id husk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUsI_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  husk.clp 	husk1   "  ?id "  BUsI_nikAla )" crlf))
)

;"husk","V","1.BUsI_nikAlanA"
;XAnyoM ke 'husk' nikAlakara kisAna xAnoM ko XAnyAgAra meM raKawe hEM
;
