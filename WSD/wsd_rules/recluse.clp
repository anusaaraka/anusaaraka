
(defrule recluse0
(declare (salience 5000))
(id-root ?id recluse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekAnwa_sevI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recluse.clp 	recluse0   "  ?id "  ekAnwa_sevI )" crlf))
)

;"recluse","Adj","1.ekAnwa_sevI"
;She loves to be a recluse girl.
;
(defrule recluse1
(declare (salience 4900))
(id-root ?id recluse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekAnwa_sevI_manuRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recluse.clp 	recluse1   "  ?id "  ekAnwa_sevI_manuRya )" crlf))
)

;"recluse","N","1.ekAnwa_sevI_manuRya"
;Her father leads the life of a recluse.
;
