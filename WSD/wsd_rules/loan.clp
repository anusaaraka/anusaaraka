
(defrule loan0
(declare (salience 5000))
(id-root ?id loan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id qNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  loan.clp 	loan0   "  ?id "  qNa )" crlf))
)

;"loan","N","1.qNa"
;He got a loan from the bank. I have taken the book on loan.
;
(defrule loan1
(declare (salience 4900))
(id-root ?id loan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id qNa_para_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  loan.clp 	loan1   "  ?id "  qNa_para_xe )" crlf))
)

;"loan","V","1.qNa_para_xenA"
;He loaned me some money.
;
