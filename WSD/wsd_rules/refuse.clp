
(defrule refuse0
(declare (salience 5000))
(id-root ?id refuse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walaCata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refuse.clp 	refuse0   "  ?id "  walaCata )" crlf))
)

;"refuse","N","1.walaCata"
;Town refuse is dumped outside the town.
;
(defrule refuse1
(declare (salience 4900))
(id-root ?id refuse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manA_kara));('asvIkAra_kara' is changed with 'manA_kara' by sheetal(29-09-09).)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refuse.clp 	refuse1   "  ?id "  manA_kara )" crlf));inconsistency in the mng in assert & print statement has been corrected by Sukhada (15.3.10)
)

;"refuse","VT","1.asvIkAra_karanA"
;I refused to lend him extra money.
;
