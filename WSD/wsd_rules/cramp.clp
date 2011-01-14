
(defrule cramp0
(declare (salience 5000))
(id-root ?id cramp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id EMTana_kI_pIdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cramp.clp 	cramp0   "  ?id "  EMTana_kI_pIdZA )" crlf))
)

;"cramp","N","1.EMTana_kI_pIdZA"
;After writing for two hours ,he started to get cramps in his hand. 
;
(defrule cramp1
(declare (salience 4900))
(id-root ?id cramp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cramp.clp 	cramp1   "  ?id "  jakadZa )" crlf))
)

;"cramp","V","1.jakadZanA"
;All these difficulties cramped his progress.
;
