
(defrule contrary0
(declare (salience 5000))
(id-root ?id contrary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawikUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contrary.clp 	contrary0   "  ?id "  prawikUla )" crlf))
)

(defrule contrary1
(declare (salience 4900))
(id-root ?id contrary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawikUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contrary.clp 	contrary1   "  ?id "  prawikUla )" crlf))
)

(defrule contrary2
(declare (salience 4800))
(id-root ?id contrary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viparIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contrary.clp 	contrary2   "  ?id "  viparIwa )" crlf))
)

;"contrary","Adj","1.viparIwa"
;Acts contrary to our code of ethics
;`hot' && `cold' are contrary terms
;
;
