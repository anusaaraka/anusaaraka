
(defrule genuine0
(declare (salience 5000))
(id-root ?id genuine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  genuine.clp 	genuine0   "  ?id "  asalI )" crlf))
)

(defrule genuine1
(declare (salience 4900))
(id-root ?id genuine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id amiSriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  genuine.clp 	genuine1   "  ?id "  amiSriwa )" crlf))
)

;"genuine","Adj","1.amiSriwa/vAswavika"
;I have genuine love for my country.
;
;
