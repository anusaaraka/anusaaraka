
(defrule pickle0
(declare (salience 5000))
(id-root ?id pickle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pickle.clp 	pickle0   "  ?id "  acAra )" crlf))
)

;"pickle","N","1.acAra"
;The mango pickle is very tasty.
;
(defrule pickle1
(declare (salience 4900))
(id-root ?id pickle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAra_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pickle.clp 	pickle1   "  ?id "  acAra_banA )" crlf))
)

;"pickle","V","1.acAra_banAnA"
;I have to pickle these vegetables.
;
