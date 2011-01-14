
(defrule evident0
(declare (salience 5000))
(id-root ?id evident)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evident.clp 	evident0   "  ?id "  spaRta )" crlf))
)

(defrule evident1
(declare (salience 4900))
(id-root ?id evident)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evident.clp 	evident1   "  ?id "  spaRta )" crlf))
)

;"evident","Adj","1.spaRta"
;His involvement in the affair is evident from his suspicious behaviour on that day.
;--"2.prawyakRa"
;--"3.prakata"
;
;
