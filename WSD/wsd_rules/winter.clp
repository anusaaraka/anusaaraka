
(defrule winter0
(declare (salience 5000))
(id-root ?id winter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  winter.clp 	winter0   "  ?id "  jAdZA )" crlf))
)

;"winter","N","1.jAdZA"
;Vegetables are fresh in winter.
;
(defrule winter1
(declare (salience 4900))
(id-root ?id winter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAdZA_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  winter.clp 	winter1   "  ?id "  jAdZA_kAta )" crlf))
)

;"winter","VI","1.jAdZA_kAtanA"
;They wintered in the South this year.
;
