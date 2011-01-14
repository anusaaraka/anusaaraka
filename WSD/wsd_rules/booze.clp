
(defrule booze0
(declare (salience 5000))
(id-root ?id booze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  booze.clp 	booze0   "  ?id "  SarAba )" crlf))
)

;"booze","N","1.SarAba"
;His partner has gone on the booze again.
;
(defrule booze1
(declare (salience 4900))
(id-root ?id booze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jyAxA_SarAba_pI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  booze.clp 	booze1   "  ?id "  jyAxA_SarAba_pI )" crlf))
)

;"booze","V","1.jyAxA_SarAba_pInA"
;She likes to go out boozing with her boy friends.
;
