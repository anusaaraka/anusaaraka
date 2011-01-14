
(defrule cuddle0
(declare (salience 5000))
(id-root ?id cuddle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gADa_AliMgana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cuddle.clp 	cuddle0   "  ?id "  gADa_AliMgana )" crlf))
)

;"cuddle","N","1.gADa_AliMgana"
;The baby is longing for his mother's cuddle
;
(defrule cuddle1
(declare (salience 4900))
(id-root ?id cuddle)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cipatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cuddle.clp 	cuddle1   "  ?id "  cipatA )" crlf))
)

(defrule cuddle2
(declare (salience 4800))
(id-root ?id cuddle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cipata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cuddle.clp 	cuddle2   "  ?id "  cipata )" crlf))
)

;"cuddle","VI","1.cipatanA[cipatAnA]"
;Mother was cuddling her baby
;
