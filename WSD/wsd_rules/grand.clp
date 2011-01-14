
(defrule grand0
(declare (salience 5000))
(id-root ?id grand)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bavya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grand.clp 	grand0   "  ?id "  Bavya )" crlf))
)

(defrule grand1
(declare (salience 4900))
(id-root ?id grand)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grand.clp 	grand1   "  ?id "  badZA )" crlf))
)

;"grand","Adj","1.badZA"
;The opening ceremony was a grand show.
;
;
