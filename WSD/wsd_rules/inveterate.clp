
(defrule inveterate0
(declare (salience 5000))
(id-root ?id inveterate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inveterate.clp 	inveterate0   "  ?id "  pakke )" crlf))
)

(defrule inveterate1
(declare (salience 4900))
(id-root ?id inveterate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aByaswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inveterate.clp 	inveterate1   "  ?id "  aByaswa )" crlf))
)

;"inveterate","Adj","1.aByaswa"
;She is an inveterate musician.
;--"2.niranwara[burI_AxaweM]"
;His inveterated behaviour brought his downfall.
;
;
