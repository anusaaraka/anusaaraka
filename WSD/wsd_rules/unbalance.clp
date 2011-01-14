
(defrule unbalance0
(declare (salience 5000))
(id-root ?id unbalance)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id unbalanced )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id asaMwuliwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  unbalance.clp  	unbalance0   "  ?id "  asaMwuliwa )" crlf))
)

;"unbalanced","Adj","1.asaMwuliwa"
;He fell ill due to unbalanced diet.
;
(defrule unbalance1
(declare (salience 4900))
(id-root ?id unbalance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asaMwuliwa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unbalance.clp 	unbalance1   "  ?id "  asaMwuliwa_kara_xe )" crlf))
)

;"unbalance","V","1.asaMwuliwa_kara_xenA"
;His sudden demise unbalanced the whole programme.
;
;