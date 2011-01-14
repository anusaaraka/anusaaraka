
(defrule because0
(declare (salience 5000))
(id-root ?id because)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  because.clp 	because0   "  ?id "  - )" crlf))
)

(defrule because1
(declare (salience 4900))
(id-root ?id because)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyozki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  because.clp 	because1   "  ?id "  kyozki )" crlf))
)

;"because","Conj","1.kyozki"
;I couldn't attend the class because I was not well.
;
(defrule because2
(declare (salience 4800))
(id-root ?id because)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyozki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  because.clp 	because2   "  ?id "  kyozki )" crlf))
)

