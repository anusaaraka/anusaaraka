
(defrule frizz0
(declare (salience 5000))
(id-root ?id frizz)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frizz.clp 	frizz0   "  ?id "   - )" crlf)))

;"frizz","N","1."
;Krishna looks beautiful with a frizz.
;
(defrule frizz1
(declare (salience 4900))
(id-root ?id frizz)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GuzGarAle_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frizz.clp 	frizz1   "  ?id "  GuzGarAle_banA )" crlf))
)

;"frizz","V","1.GuzGarAle_banAnA"
;She had her hair frizzed for the party .
;
