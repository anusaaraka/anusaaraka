
(defrule burden0
(declare (salience 5000))
(id-root ?id burden)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id boJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burden.clp 	burden0   "  ?id "  boJa )" crlf))
)

;"burden","N","1.boJa"
;The burden of responsibility
;
(defrule burden1
(declare (salience 4900))
(id-root ?id burden)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burden.clp 	burden1   "  ?id "  lAxa )" crlf))
)

;"burden","VT","1.lAxanA"
;She was burdened with the responsiblity of her handicapped father && three younger sisters.
;
