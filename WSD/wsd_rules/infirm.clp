
(defrule infirm0
(declare (salience 5000))
(id-root ?id infirm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamajora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infirm.clp 	infirm0   "  ?id "  kamajora )" crlf))
)

(defrule infirm1
(declare (salience 4900))
(id-root ?id infirm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asWira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infirm.clp 	infirm1   "  ?id "  asWira )" crlf))
)

;"infirm","Adj","1.asWira/axqDZa"
;Infirm of purpose.
;--"2.rugNa"
;
;
