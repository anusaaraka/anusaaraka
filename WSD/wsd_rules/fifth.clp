
(defrule fifth0
(declare (salience 5000))
(id-root ?id fifth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAzcavAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fifth.clp 	fifth0   "  ?id "  pAzcavAz )" crlf))
)

;"fifth","N","1.pAzcavAz"
;He came fifth in the race.
;
(defrule fifth1
(declare (salience 4900))
(id-root ?id fifth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAzcavAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fifth.clp 	fifth1   "  ?id "  pAzcavAz )" crlf))
)

;"fifth","Pron","1.pAzcavAz"
;He came fifth in the race.
;
