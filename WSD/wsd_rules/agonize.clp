
(defrule agonize0
(declare (salience 5000))
(id-root ?id agonize)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id agonizing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bahuwa_xuKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  agonize.clp  	agonize0   "  ?id "  bahuwa_xuKI )" crlf))
)

;"agonizing","Adj","1.bahuwa_xuKI"
;It was an agonizing decision.
;
(defrule agonize1
(declare (salience 4900))
(id-root ?id agonize)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyanwa_pIdZiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agonize.clp 	agonize1   "  ?id "  awyanwa_pIdZiwa_ho )" crlf))
)

;"agonize","VI","1.awyanwa_pIdZiwa_honA"
;She agonized for days whether to allow her son to join the army.
;
(defrule agonize2
(declare (salience 4800))
(id-root ?id agonize)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuHKa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agonize.clp 	agonize2   "  ?id "  xuHKa_xe )" crlf))
)

;"agonize","VT","1.xuHKa_xenA"
;The death of her son agonized her.
;
