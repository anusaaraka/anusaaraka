
(defrule born0
(declare (salience 5000))
(id-root ?id born)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id janmajAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  born.clp 	born0   "  ?id "  janmajAwa )" crlf))
)

;"born","Adj","1.janmajAwa"
;Sunil Gavaskar's son will be a born cricketer.
;Geeta and Reeta were born at the same time. (modified by Sukhada (18-09-10))
(defrule born1
(declare (salience 4900))
(id-root ?id born)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pExA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  born.clp 	born1   "  ?id "  pExA_ho )" crlf))
)

;"born","V","1.janma_lenA[honA]"
;Her son was born in 1990.
;He was born to be a great singer.
;
