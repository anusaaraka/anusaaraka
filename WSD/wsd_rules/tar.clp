
(defrule tar0
(declare (salience 5000))
(id-root ?id tar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tar.clp 	tar0   "  ?id "  rAla )" crlf))
)

;"tar","N","1.rAla"
;Tar is black.
;
(defrule tar1
(declare (salience 4900))
(id-root ?id tar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAla_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tar.clp 	tar1   "  ?id "  rAla_lagA )" crlf))
)

;"tar","VT","1.rAla_lagA"
;The municipal authorities had to tar the road .
;
