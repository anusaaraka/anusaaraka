
(defrule less0
(declare (salience 5000))
(id-root ?id less)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  less.clp 	less0   "  ?id "  kama )" crlf))
)

;"less","Adj","1.kama"
(defrule less1
(declare (salience 4900))
(id-root ?id less)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  less.clp 	less1   "  ?id "  kama )" crlf))
)

;"less","Adv","1.kama"
;She goes out less now.
;
(defrule less2
(declare (salience 4800))
(id-root ?id less)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  less.clp 	less2   "  ?id "  kama )" crlf))
)

;"less","Pron","1.kama"
;I knew him much less aat the time.
;
