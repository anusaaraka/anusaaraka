
(defrule vulnerable0
(declare (salience 5000))
(id-root ?id vulnerable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamajora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vulnerable.clp 	vulnerable0   "  ?id "  kamajora )" crlf))
)

(defrule vulnerable1
(declare (salience 4900))
(id-root ?id vulnerable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bexya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vulnerable.clp 	vulnerable1   "  ?id "  Bexya )" crlf))
)

;"vulnerable","Adj","1.Bexya"
;IT is a vulnerable bridge
;--"2.kamajora"
;He is vulnerable to diseases
;
;
