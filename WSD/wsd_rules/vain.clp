(defrule vain1
(declare (salience 4500))
(id-root ?id vain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bya_Wa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* " vain.clp       vain1   "  ?id "  bya_Wa )" crlf))
)
;Added by priyadarsani(14.12.09)
;I tried in vain to start a conversation.
