
(defrule nigh0
(declare (salience 5000))
(id-root ?id nigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagaBaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nigh.clp 	nigh0   "  ?id "  lagaBaga )" crlf))
)

;"nigh","Adv","1.lagaBaga"
;Spend nigh on Rs.5oo on dresses.
;
(defrule nigh1
(declare (salience 4900))
(id-root ?id nigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nigh.clp 	nigh1   "  ?id "  pAsa )" crlf))
)

;"nigh","Prep","1.pAsa"
