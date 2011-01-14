
(defrule famish0
(declare (salience 5000))
(id-root ?id famish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id famished )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BUKa_se_pIdZiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  famish.clp  	famish0   "  ?id "  BUKa_se_pIdZiwa )" crlf))
)

;"famished","Adj","1.BUKa_se_pIdZiwa"
(defrule famish1
(declare (salience 4900))
(id-root ?id famish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUKoM_mara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  famish.clp 	famish1   "  ?id "  BUKoM_mara )" crlf))
)

;"famish","V","1.BUKoM_maranA2"
