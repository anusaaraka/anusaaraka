
(defrule profit0
(declare (salience 5000))
(id-root ?id profit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  profit.clp 	profit0   "  ?id "  lABa )" crlf))
)

;"profit","N","1.lABa/munAPZA"
;This time she didn't get much profit out of this business.
;
(defrule profit1
(declare (salience 4900))
(id-root ?id profit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABa_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  profit.clp 	profit1   "  ?id "  lABa_uTA )" crlf))
)

;"profit","V","1.lABa_uTAnA"
;Political parties are profiting out of the voter needs.
;
