

;Added by Meena(26.4.10) 
;All his arguments are utter nonsense . 
(defrule nonsense0
(declare (salience 5000))
(id-root ?id nonsense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakavAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nonsense.clp     nonsense0   "  ?id "   bakavAsa) )" crlf))
)


