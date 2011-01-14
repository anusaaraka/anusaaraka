;Added by Meena(24.4.10)
;His boyhood was spent in utter poverty .
(defrule utter0
(declare (salience 5000))
(id-root ?id utter)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 poverty|misery|bliss)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyanwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  utter.clp     utter0   "  ?id "  awyanwa )" crlf))
)


;Added by Meena(24.4.10)
;He felt an utter fool . 
;All his arguments are utter nonsense.
(defrule utter1
(declare (salience 5000))
(id-root ?id utter)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 chaos|confusion|nonsense|rubbish|drevil|amazement|fool)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niwAnwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  utter.clp 	utter1   "  ?id "   niwAnwa )" crlf))
)






;salience reduced by Meena(27.4.10)
(defrule utter2
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id utter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  utter.clp     utter2   "  ?id "  pUrNa )" crlf))
)


;
(defrule utter3
(declare (salience 4900))
(id-root ?id utter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  utter.clp 	utter3   "  ?id "  bola )" crlf))
)

;"utter","VT","1.bola"
;He never uttered a word in protest.
;
