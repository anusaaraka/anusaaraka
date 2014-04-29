;@@@ Added by Shirisha Manju 16-4-14 Suggested by Sukhada
;Naming the government scheme after inspiring personalities is the easiest tool for reviving the history. 
;preraka vyakwiwva ke nAma para sarakArI yojanA kA nAmakaraNa karanA iwihAsa ko punarjIviwa karane kA sabase aXika AsAna OjAra hE.
(defrule government0
(declare (salience 200))
(id-root ?id government)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sarakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  government.clp    government0   "  ?id "  sarakArI)" crlf))
)

;@@@ Added by Shirisha Manju 16-4-14 Suggested by Sukhada
;The prime minister has formed a new government. 
;praXAna manwrI ne eka nayI sarakAra ko banAyA hE.
(defrule government1
(id-root ?id government)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  government.clp    government1  "  ?id "  sarakAra)" crlf))
)

