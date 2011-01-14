
(defrule drub0
(declare (salience 5000))
(id-root ?id drub)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id drubbing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id TukAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  drub.clp  	drub0   "  ?id "  TukAI )" crlf))
)

;"drubbing","N","1.TukAI"
;
(defrule drub1
(declare (salience 4900))
(id-root ?id drub)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Toka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drub.clp 	drub1   "  ?id "  Toka )" crlf))
)

;"drub","VT","1.TokanA/pItanA"
;
;
