
;Originally the rule file had just one rule. I changed the existing rule and added one more rule. I commented the statement (id-cat_coarse....) because in the all_facts file it was showing coarse category for "excessively" as adjective and could get the right sense even without the statement (id-cat_coarse....).

;He does not drink excessively.
(defrule excessive1
(declare (salience 5000))
(id-root ?id excessive)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id excessively)
;(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  excessive.clp  	excessive0   "  ?id "  aXika )" crlf))
)

(defrule excessive2
(declare (salience 4900))
(id-root ?id excessive)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id excessively)
;(id-cat_coarse ?id adverb)
(id-word =(+ ?id 1)  so)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id iwanA_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  excessive.clp  	excessive1   "  ?id "  iwanA_aXika )" crlf))
)

;The  excessively2 rule I added to incorporate the meaning "aXika" when ' excessively' occurs with 'so' (Meena).
;She was polite but not excessively so.
