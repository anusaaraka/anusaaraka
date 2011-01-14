
(defrule intermediary0
(declare (salience 5000))
(id-root ?id intermediary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXyasWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intermediary.clp 	intermediary0   "  ?id "  maXyasWa )" crlf))
)

;"intermediary","Adj","1.maXyasWa"
;He played an intermediary role in the conflict.
;
(defrule intermediary1
(declare (salience 4900))
(id-root ?id intermediary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiniXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intermediary.clp 	intermediary1   "  ?id "  prawiniXi )" crlf))
)

;"intermediary","N","1.prawiniXi"
;There are intermediaries in the business.
;
