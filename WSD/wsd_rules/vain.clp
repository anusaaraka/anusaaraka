
;$Modofied by Prachi Rathore[29-3-14]
;meaning changed from bya_Wa to vyarWa
(defrule vain1
(declare (salience 4500))
(id-root ?id vain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vyarWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* " vain.clp       vain1   "  ?id "  vyarWa )" crlf))
)
;Added by priyadarsani(14.12.09)
;I tried in vain to start a conversation.

;@@@ Added by Prachi Rathore[29-3-14]
;He was very vain about his hair and his clothes. [cambridge]
;वह उसके केश के बारे में और उसके वस्त्रों के बारे में अत्यंत अहंकारी था . 
(defrule vain2
(declare (salience 5000))
(id-root ?id vain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaka  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ahaMkArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* " vain.clp       vain2   "  ?id "  ahaMkArI )" crlf))
)


