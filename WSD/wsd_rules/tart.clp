
(defrule tart0
(declare (salience 5000))
(id-root ?id tart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KattA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tart.clp 	tart0   "  ?id "  KattA )" crlf))
)

;"tart","Adj","1.KattA"
;The mango has a tart taste.
;
(defrule tart1
(declare (salience 4900))
(id-root ?id tart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tArta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tart.clp 	tart1   "  ?id "  tArta )" crlf))
)

;"tart","N","1.tArta{Pala_kA_banA_huA_CotA_pawalA_keka}"
;She made tart for lunch.
;
