
(defrule receipt0
(declare (salience 5000))
(id-root ?id receipt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  receipt.clp 	receipt0   "  ?id "  pAnA )" crlf))
)

;"receipt","N","1.pAnA"
;He got happy on receipt of the goods.
;
(defrule receipt1
(declare (salience 4900))
(id-root ?id receipt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rasIxa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  receipt.clp 	receipt1   "  ?id "  rasIxa_xe )" crlf))
)

;"receipt","VT","1.rasIxa_xenA"
;We got receipts for each thing we bought.
;
