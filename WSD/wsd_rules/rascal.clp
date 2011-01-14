
(defrule rascal0
(declare (salience 5000))
(id-root ?id rascal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamInA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rascal.clp 	rascal0   "  ?id "  kamInA )" crlf))
)

;"rascal","Adj","1.kamInA"
;He is a rascal fellow.
;
(defrule rascal1
(declare (salience 4900))
(id-root ?id rascal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurjana_SEwAna_xuRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rascal.clp 	rascal1   "  ?id "  xurjana_SEwAna_xuRta )" crlf))
)

;"rascal","N","1.xurjana_SEwAna_xuRta"
;Her both the children are rascals.
;
