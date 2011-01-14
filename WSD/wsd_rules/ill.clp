
(defrule ill0
(declare (salience 5000))
(id-root ?id ill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asvasWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ill.clp 	ill0   "  ?id "  asvasWa )" crlf))
)

;"ill","Adj","1.asvasWa"
;She fell ill suddenly.
;
(defrule ill1
(declare (salience 4900))
(id-root ?id ill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asvasWawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ill.clp 	ill1   "  ?id "  asvasWawA )" crlf))
)

;"ill","N","1.asvasWawA"
;She fell ill suddenly.
;
