
(defrule mention0
(declare (salience 5000))
(id-root ?id mention)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mentioned )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kaWiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mention.clp  	mention0   "  ?id "  kaWiwa )" crlf))
)

;"mentioned","Adj","1.kaWiwa"
;The above mentioned points have to be considered seriously.
;
(defrule mention1
(declare (salience 4900))
(id-root ?id mention)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulleKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mention.clp 	mention1   "  ?id "  ulleKa )" crlf))
)

;"mention","N","1.ulleKa"
(defrule mention2
(declare (salience 4800))
(id-root ?id mention)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulleKa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mention.clp 	mention2   "  ?id "  ulleKa_kara )" crlf))
)

;"mention","V","1.ulleKa_karanA"
;Don't mention about my trip to anyone.
;
