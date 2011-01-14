
(defrule regular0
(declare (salience 5000))
(id-root ?id regular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyamiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  regular.clp 	regular0   "  ?id "  niyamiwa )" crlf))
)

(defrule regular1
(declare (salience 4900))
(id-root ?id regular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyamiwa_sEnika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  regular.clp 	regular1   "  ?id "  niyamiwa_sEnika )" crlf))
)

;"regular","N","1.niyamiwa_sEnika"
;He is one of the regulars here.
;
;
