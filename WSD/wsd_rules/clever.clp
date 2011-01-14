
(defrule clever0
(declare (salience 5000))
(id-root ?id clever)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cawurAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clever.clp 	clever0   "  ?id "  cawurAI )" crlf))
)

(defrule clever1
(declare (salience 4900))
(id-root ?id clever)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cawura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clever.clp 	clever1   "  ?id "  cawura )" crlf))
)

(defrule clever2
(declare (salience 4800))
(id-root ?id clever)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cawura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clever.clp 	clever2   "  ?id "  cawura )" crlf))
)

;"clever","Adj","1.cawura"
;He has a clever brother.
;He is very clever. He always gets his work done by others.
;
;
