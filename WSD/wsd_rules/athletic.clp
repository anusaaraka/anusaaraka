
(defrule athletic0
(declare (salience 5000))
(id-root ?id athletic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  athletic.clp 	athletic0   "  ?id "  Kela )" crlf))
)

(defrule athletic1
(declare (salience 4900))
(id-root ?id athletic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hqRta-puRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  athletic.clp 	athletic1   "  ?id "  hqRta-puRta )" crlf))
)

;"athletic","Adj","1.hqRta-puRta"
;Giri is an athletic man.
;
;
