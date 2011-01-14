
;Originally the rule file had just one rule. I changed the existing rule and added one more rule. I commented the statement (id-cat_crude....) because in the all_facts file it was showing crude category for "excessively" as adjective and could get the right sense even without the statement (id-cat_crude....).

;He does not drink excessively.
(defrule excessively1
(declare (salience 10000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id excessively)
;(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-HM ?id aXika)))

(defrule excessively2
(declare (salience 10000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id excessively)
;(id-cat_coarse ?id adverb)
(id-word =(+ ?id 1)  so)
=>
(retract ?mng)
(assert (id-HM ?id iwanA_aXika))
)

;The  excessively2 rule I added to incorporate the meaning "aXika" when ' excessively' occurs with 'so' (Meena).
;She was polite but not excessively so.
