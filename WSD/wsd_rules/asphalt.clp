
(defrule asphalt0
(declare (salience 5000))
(id-root ?id asphalt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAmara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  asphalt.clp 	asphalt0   "  ?id "  dAmara )" crlf))
)

;"asphalt","N","1.dAmara"
;Asphalt is used for constructing roads .
;
(defrule asphalt1
(declare (salience 4900))
(id-root ?id asphalt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAmara_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  asphalt.clp 	asphalt1   "  ?id "  dAmara_dAla )" crlf))
)

;"asphalt","V","1.dAmara_dAlanA"
;The road was asphalted before spreading sand on it.
;
