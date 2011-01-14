
(defrule elate0
(declare (salience 5000))
(id-root ?id elate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praPulliwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elate.clp 	elate0   "  ?id "  praPulliwa_kara )" crlf))
)

(defrule elate1
(declare (salience 4900))
(id-root ?id elate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praPulliwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elate.clp 	elate1   "  ?id "  praPulliwa_ho )" crlf))
)

;"elate","VT","1.praPulliwa_karanA[honA]"
;The news that he will get a seat in the college of his choice elated Ravi.
;
