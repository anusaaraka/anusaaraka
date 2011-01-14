
(defrule bloat0
(declare (salience 5000))
(id-root ?id bloat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bloat.clp 	bloat0   "  ?id "  PUla )" crlf))
)

;"bloat","VI","1.PUlanA/sUjanA"
;The dead man's stomach was bloated
;
(defrule bloat1
(declare (salience 4900))
(id-root ?id bloat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bloat.clp 	bloat1   "  ?id "  PulA )" crlf))
)

;"bloat","VT","1.PulAnA/sujAnA"
;Hunger bloated the child's belly
;
