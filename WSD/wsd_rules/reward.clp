
(defrule reward0
(declare (salience 5000))
(id-root ?id reward)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id rewarding )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id lABapraxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reward.clp  	reward0   "  ?id "  lABapraxa )" crlf))
)

;"rewarding","Adj","1.lABapraxa"
;She has done a rewarding task.
;
(defrule reward1
(declare (salience 4900))
(id-root ?id reward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAriwoRika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reward.clp 	reward1   "  ?id "  pAriwoRika )" crlf))
)

;"reward","N","1.pAriwoRika"
;she got a reward of Rs.5000, for information about a lost child.
;
(defrule reward2
(declare (salience 4800))
(id-root ?id reward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAriwoRika_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reward.clp 	reward2   "  ?id "  pAriwoRika_xe )" crlf))
)

;"reward","VT","1.pAriwoRika_xenA"
;Her son was rewarded for his hard work.
;
