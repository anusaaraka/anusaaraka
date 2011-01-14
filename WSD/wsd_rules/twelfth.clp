
(defrule twelfth0
(declare (salience 5000))
(id-root ?id twelfth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bArahavAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twelfth.clp 	twelfth0   "  ?id "  bArahavAz )" crlf))
)

;"twelfth","Adj","1.bArahavAz"
;Read the twelfth chapter from Mahabharata.
;
(defrule twelfth1
(declare (salience 4900))
(id-root ?id twelfth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bArahavAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twelfth.clp 	twelfth1   "  ?id "  bArahavAz )" crlf))
)

;"twelfth","N","1.bArahavAz{aMSa}"
;He is coming on the twelfth next month.
;
