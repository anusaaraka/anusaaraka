
(defrule clockwise0
(declare (salience 5000))
(id-root ?id clockwise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GadZI_kI_suI_kI_xiSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clockwise.clp 	clockwise0   "  ?id "  GadZI_kI_suI_kI_xiSA )" crlf))
)

;"clockwise","Adj","1.GadZI_kI_suI_kI_xiSA"
;Children ran round the tree in clockwise direction.
;
(defrule clockwise1
(declare (salience 4900))
(id-root ?id clockwise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GadZI_kI_suI_kI_xiSA_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clockwise.clp 	clockwise1   "  ?id "  GadZI_kI_suI_kI_xiSA_meM )" crlf))
)

;"clockwise","Adv","1.GadZI_kI_suI_kI_xiSA_meM"
;Children ran clockwise round the tree.
;
