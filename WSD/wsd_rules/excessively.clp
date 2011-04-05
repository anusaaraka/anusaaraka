;Modified by Meena(5.4.11);added (kriyA-kriyA_viSeRaNa  ?id1 ?id)
;He does not drink excessively.
(defrule excessively1
(declare (salience 4000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id excessively)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  excessively.clp          excessively0   "  ?id "  aXika )" crlf))
)




;Added by Meena
;She was polite but not excessively so.
;(defrule excessively2
;(declare (salience 4000))
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id excessively)
;;(id-cat_coarse ?id adverb)
;(id-word =(+ ?id 1)  so)
;=>
;(retract ?mng)
;(assert (id-wsd_word_mng ?id iwanA_aXika))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  excessively.clp          excessively0   "  ?id "  iwanA_aXika )" crlf))
;)



