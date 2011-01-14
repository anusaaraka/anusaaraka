
(defrule invoice0
(declare (salience 5000))
(id-root ?id invoice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIjaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invoice.clp 	invoice0   "  ?id "  bIjaka )" crlf))
)

;"invoice","N","1.bIjaka"
;The clerk made an invoice for the expenses.
;
(defrule invoice1
(declare (salience 4900))
(id-root ?id invoice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIjaka_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invoice.clp 	invoice1   "  ?id "  bIjaka_banA )" crlf))
)

;"invoice","V","1.bIjaka_banAnA"
;The booking will be invoiced by your travel agent.
;
