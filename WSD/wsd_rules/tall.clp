
(defrule tall0
(declare (salience 5000))
(id-root ?id tall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laMbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tall.clp 	tall0   "  ?id "  laMbA )" crlf))
)

(defrule tall1
(declare (salience 4900))
(id-root ?id tall)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lambA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tall.clp 	tall1   "  ?id "  lambA )" crlf))
)

;"tall","Adj","1.lambA"
;He is a tall person.
;
;
