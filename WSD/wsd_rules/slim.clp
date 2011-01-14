
(defrule slim0
(declare (salience 5000))
(id-root ?id slim)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slim.clp 	slim0   "  ?id "  pawalA )" crlf))
)

(defrule slim1
(declare (salience 4900))
(id-root ?id slim)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slim.clp 	slim1   "  ?id "  pawalA )" crlf))
)

;"slim","Adj","1.pawalA"
;Today girls dream for a slim && trim figure.
;--"2.kama"
;THe chances of India winning the match are very slim.
;
;
