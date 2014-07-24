
(defrule prey0
(declare (salience 5000))
(id-root ?id prey)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " prey.clp	prey0  "  ?id "  " ?id1 "  AkramaNa_kara  )" crlf))
)

;Hawks prey upon smaller birds. 
;bAjZa Cote pakRiyoM para AkramaNa karawA hE
(defrule prey1
(declare (salience 4900))
(id-root ?id prey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prey.clp 	prey1   "  ?id "  SikAra )" crlf))
)

;"prey","N","1.SikAra"
;The little mouse fell prey to the claws of a stealthy cat.
;

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;These young thieves prey on the elderly. [Canbridge]
;ये तरुण चोर बुजुर्ग सा पर लूटते हैं . 
(defrule prey2
(declare (salience 4800))
(id-root ?id prey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 thief|crook|robber|burgalar|bandit|shoplifter)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prey.clp 	prey2   "  ?id "  lUta )" crlf))
)


(defrule prey3
(declare (salience 4700))
(id-root ?id prey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikAra_karana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prey.clp 	prey3   "  ?id "  SikAra_karanA )" crlf))
)

;"prey","V","1.SikAra_karana"
;A cunning fox pounced to prey upon a little squirrel.
;
