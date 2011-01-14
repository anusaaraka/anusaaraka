
(defrule miscount0
(declare (salience 5000))
(id-root ?id miscount)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawa_ginanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  miscount.clp 	miscount0   "  ?id "  galawa_ginanA )" crlf))
)

;"miscount","N","1.galawa_ginanA"
;The hostesse's miscount allowed him to reach London undetected.
;
(defrule miscount1
(declare (salience 4900))
(id-root ?id miscount)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawa_gina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  miscount.clp 	miscount1   "  ?id "  galawa_gina )" crlf))
)

;"miscount","V","1.galawa_ginanA"
;She miscounted the number of people sitting there.
;
