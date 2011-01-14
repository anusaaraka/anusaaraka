
(defrule flounce0
(declare (salience 5000))
(id-root ?id flounce)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flounced )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id JAlara_lagA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flounce.clp  	flounce0   "  ?id "  JAlara_lagA_huA )" crlf))
)

;"flounced","Adj","1.JAlara lagA huA"
;Her petticoats are flounced.
;
(defrule flounce1
(declare (salience 4900))
(id-root ?id flounce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAlara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flounce.clp 	flounce1   "  ?id "  JAlara )" crlf))
)

;"flounce","N","1.JAlara"
;She wears skirts with flounce sewn to it.
;
(defrule flounce2
(declare (salience 4800))
(id-root ?id flounce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AveSa_meM_cala_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flounce.clp 	flounce2   "  ?id "  AveSa_meM_cala_xe )" crlf))
)

;"flounce","V","1.AveSa_meM_cala_xenA"
;When he found that people are not paying any more attention to him, he flounced out of the gathering.
;
