
(defrule best0
(declare (salience 5000))
(id-root ?id best)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarvowwama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  best.clp 	best0   "  ?id "  sarvowwama )" crlf))
)

;"best","Adj","1.sarvowwama"
;I don't know the best film of the year.
;
(defrule best1
(declare (salience 4900))
(id-root ?id best)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sabase_acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  best.clp 	best1   "  ?id "  sabase_acCA )" crlf))
)

;"best","Adv","1.sabase_acCA"
;I work best in the morning.
;
(defrule best2
(declare (salience 4800))
(id-root ?id best)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarvowwama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  best.clp 	best2   "  ?id "  sarvowwama )" crlf))
)

;"best","N","1.sarvowwama"
;I tried my level best to win the match.
;
