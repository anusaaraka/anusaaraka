;@@@ Added by Shirisha Manju 16-4-14 Suggested by Sukhada
;Naming the government scheme after inspiring personalities is the easiest tool for reviving the history. 
;preraka vyakwiwva ke nAma para sarakArI yojanA kA nAmakaraNa karanA iwihAsa ko punarjIviwa karane kA sabase aXika AsAna OjAra hE.
(defrule revive0
(declare (salience 200))
(id-root ?id revive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id punarujjIviwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  revive.clp    revive0   "  ?id "  punarujjIviwa_kara)" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  revive.clp      revive0   "  ?id " ko )" crlf)
)

;@@@ Added by Sukhada 16-4-14
;The flowers soon revived in water. 
;PUla SIGra pAnI meM panapa uTe.
(defrule revive1
(declare (salience 210))
(id-root ?id revive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?sub)
(id-root ?sub flower)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id panapa_uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  revive.clp    revive1   "  ?id "  panapa_uTa)" crlf))
)


;@@@ Added by Shirisha Manju 16-4-14 Suggested by Sukhada
;The flowers soon revived in water. 
;PUla SIGra pAnI meM punarjIviwa hue.
(defrule revive2
(id-root ?id revive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id punarjIviwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  revive.clp    revive2   "  ?id "  punarjIviwa_ho)" crlf))
)


