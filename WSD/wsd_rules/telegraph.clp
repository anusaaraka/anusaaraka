
(defrule telegraph0
(declare (salience 5000))
(id-root ?id telegraph)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wArayaMwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  telegraph.clp 	telegraph0   "  ?id "  wArayaMwra )" crlf))
)

;"telegraph","N","1.wArayaMwra"
;Telegraph is used by the defence frequently.
;
(defrule telegraph1
(declare (salience 4900))
(id-root ?id telegraph)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAra_se_samAcAra_Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  telegraph.clp 	telegraph1   "  ?id "  wAra_se_samAcAra_Beja )" crlf))
)

;"telegraph","VT","1.wAra_se_samAcAra_Beja"
;An army personnel sent a telegraph to the front.
;
