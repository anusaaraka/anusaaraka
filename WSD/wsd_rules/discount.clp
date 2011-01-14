
(defrule discount0
(declare (salience 5000))
(id-root ?id discount)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discount.clp 	discount0   "  ?id "  CUta )" crlf))
)

;"discount","N","1.CUta"
;
(defrule discount1
(declare (salience 4900))
(id-root ?id discount)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discount.clp 	discount1   "  ?id "  CUta_xe )" crlf))
)

;"discount","VT","1.CUta_xenA"
;The government discounted the air fares.
;
