
(defrule interface0
(declare (salience 5000))
(id-root ?id interface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milana-biMxu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interface.clp 	interface0   "  ?id "  milana-biMxu )" crlf))
)

;"interface","N","1.milana-biMxu"
;The press provides the interface between the government && the people.
;
(defrule interface1
(declare (salience 4900))
(id-root ?id interface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milana-biMxu_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interface.clp 	interface1   "  ?id "  milana-biMxu_kara )" crlf))
)

;"interface","V","1.milana-biMxu_karanA"
;The computer interfaced  new system with existing programs.
;
