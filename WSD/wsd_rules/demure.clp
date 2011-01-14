
(defrule demure0
(declare (salience 5000))
(id-root ?id demure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demure.clp 	demure0   "  ?id "  SAnwa )" crlf))
)

;"demure","Adj","1.SAnwa"
;Sita was a very demure young Lady
;
(defrule demure1
(declare (salience 4900))
(id-root ?id demure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id EwarAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demure.clp 	demure1   "  ?id "  EwarAjZa )" crlf))
)

;"demure","N","1.EwarAjZa"
;His demur expressed his dissatisfaction.
;
