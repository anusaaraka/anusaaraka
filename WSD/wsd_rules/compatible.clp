
(defrule compatible0
(declare (salience 5000))
(id-root ?id compatible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anukUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compatible.clp 	compatible0   "  ?id "  anukUla )" crlf))
)

(defrule compatible1
(declare (salience 4900))
(id-root ?id compatible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anurUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compatible.clp 	compatible1   "  ?id "  anurUpa )" crlf))
)

;"compatible","Adj","1.anurUpa"
;We met a compatible married couple in the party.
;
;
