
(defrule geld0
(declare (salience 5000))
(id-root ?id geld)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id gelding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  geld.clp  	geld0   "  ?id "  - )" crlf))
)

;"gelding","N","1."
;Some tribes practice gelding of animals.
;
(defrule geld1
(declare (salience 4900))
(id-root ?id geld)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  geld.clp 	geld1   "  ?id "  - )" crlf)))

;"geld","V","1."
;Some tribes geld animals.
;
;
