
(defrule expensive0
(declare (salience 5000))
(id-root ?id expensive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahazgA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expensive.clp 	expensive0   "  ?id "  mahazgA )" crlf))
)


;"expensive","Adj","1.mahazgA"
;She always buys expensive clothes.
;
;
