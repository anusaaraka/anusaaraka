
(defrule nay0
(declare (salience 5000))
(id-root ?id nay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nay.clp 	nay0   "  ?id "  nahIM )" crlf))
)

;"nay","Adv","1.nahIM"
;Nay, I don't think so.
;
(defrule nay1
(declare (salience 4900))
(id-root ?id nay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asvIkqwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nay.clp 	nay1   "  ?id "  asvIkqwi )" crlf))
)

;"nay","N","1.asvIkqwi"
;He said nay to him.
;
