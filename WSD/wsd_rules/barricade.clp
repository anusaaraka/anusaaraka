
(defrule barricade0
(declare (salience 5000))
(id-root ?id barricade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id moracA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  barricade.clp 	barricade0   "  ?id "  moracA )" crlf))
)

;"barricade","N","1.moracA"
;The soldiers stormed the barricades erected by the rioters.
;
(defrule barricade1
(declare (salience 4900))
(id-root ?id barricade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id moracA_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  barricade.clp 	barricade1   "  ?id "  moracA_bAzXa )" crlf))
)

;"barricade","VT","1.moracA_bAzXanA"
;The soldiers barricaded in the valley.
;
