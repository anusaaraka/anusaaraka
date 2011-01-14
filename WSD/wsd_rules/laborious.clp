;Following rules are added by human being.
(defrule laborious0
(declare (salience 5000))
(id-root ?id laborious)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 man)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariSramI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  laborious.clp 	laborious0   "  ?id "  pariSramI )" crlf))
)

(defrule laborious1
(declare (salience 4900))
(id-root ?id laborious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  laborious.clp 	laborious1   "  ?id "  kaTina )" crlf))
)

;"laborious","Adj","1.kaTina/SramasAXya"
;Construction of building is quite a labourious job.
;--"2.pariSramI"
;She has got a labourious style of dancing.
;
;
