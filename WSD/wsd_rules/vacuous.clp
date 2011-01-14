
(defrule vacuous0
(declare (salience 5000))
(id-root ?id vacuous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicArahIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vacuous.clp 	vacuous0   "  ?id "  vicArahIna )" crlf))
)

;"vacuous","Adj","1.vicArahIna"
;He made a vacuous laugh
;
(defrule vacuous1
(declare (salience 4900))
(id-root ?id vacuous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SUnyawApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vacuous.clp 	vacuous1   "  ?id "  SUnyawApUrNa )" crlf))
)

;"vacuous","Adv","1.SUnyawApUrNa"
