
(defrule useless0
(declare (salience 5000))
(id-root ?id useless)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyarWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  useless.clp 	useless0   "  ?id "  vyarWa )" crlf))
)

(defrule useless1
(declare (salience 4900))
(id-root ?id useless)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyarWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  useless.clp 	useless1   "  ?id "  vyarWa )" crlf))
)

;"useless","Adj","1.vyarWa"
;Her kitchen was full of useless gadgets
;
;
