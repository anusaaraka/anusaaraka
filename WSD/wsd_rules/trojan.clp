
(defrule trojan0
(declare (salience 5000))
(id-root ?id trojan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id trAya_ke_rahane_vAle))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trojan.clp 	trojan0   "  ?id "  trAya_ke_rahane_vAle )" crlf))
)

;"trojan","Adj","1.trAya_ke_rahane_vAle"
;The trojan war was fought between the Greeks && the Trojans.
;
(defrule trojan1
(declare (salience 4900))
(id-root ?id trojan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id trAya_ke_rahane_vAle))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trojan.clp 	trojan1   "  ?id "  trAya_ke_rahane_vAle )" crlf))
)

;"trojan","N","1.trAya_ke_rahane_vAle"
;The trojan war was fought between the Greeks && the Trojans.
;
