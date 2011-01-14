
(defrule divert0
(declare (salience 5000))
(id-root ?id divert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id modZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divert.clp 	divert0   "  ?id "  modZa )" crlf))
)

;"divert","V","1.modZanA^mArga_baxalanA"
(defrule divert1
(declare (salience 4900))
(id-root ?id divert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id modZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divert.clp 	divert1   "  ?id "  modZa )" crlf))
)

;"divert","VT","1.modZanA/mArga_baxalanA"
;They diverted the traffic because of the demonstration.
;
