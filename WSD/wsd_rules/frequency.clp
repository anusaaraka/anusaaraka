;Added by Meena(14.6.10)
;And 21 could stand for the 21 cm radio frequency of hydrogen in space .
(defrule frequency0
(declare (salience 5000))
(id-root ?id frequency)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id ?id1)(samAsa ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PrIkvensI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frequency.clp    frequency0   "  ?id "  PrIkvensI )" crlf))
)

