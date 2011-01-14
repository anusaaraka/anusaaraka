
(defrule discontinue0
(declare (salience 5000))
(id-root ?id discontinue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZArI_na_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discontinue.clp 	discontinue0   "  ?id "  jZArI_na_raha )" crlf))
)

;"discontinue","V","1.jZArI_na_rahanA2"
(defrule discontinue1
(declare (salience 4900))
(id-root ?id discontinue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZArI_na_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discontinue.clp 	discontinue1   "  ?id "  jZArI_na_raha )" crlf))
)

;"discontinue","VI","1.jZArI_na_rahanA"
;The support from our sponsoring agency will discontinue after March 31.
;
(defrule discontinue2
(declare (salience 4800))
(id-root ?id discontinue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZArI_na_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discontinue.clp 	discontinue2   "  ?id "  jZArI_na_raKa )" crlf))
)

;"discontinue","VT","1.jZArI_na_raKanA"
;They will discontinue the financial support from next year.
;
