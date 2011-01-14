
(defrule stubborn0
(declare (salience 5000))
(id-root ?id stubborn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haTI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stubborn.clp 	stubborn0   "  ?id "  haTI )" crlf))
)

(defrule stubborn1
(declare (salience 4900))
(id-root ?id stubborn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haTIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stubborn.clp 	stubborn1   "  ?id "  haTIlA )" crlf))
)

;"stubborn","Adj","1.haTIlA"
; My brother is stubborn.
;--"2.atala"
; This furniture is stubborn.
;
;
