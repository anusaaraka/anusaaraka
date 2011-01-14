
(defrule cram0
(declare (salience 5000))
(id-root ?id cram)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TUzsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cram.clp 	cram0   "  ?id "  TUzsa )" crlf))
)

;"cram","VI","1.TUzsanA"
;Don't cram books into the suitcase
;
(defrule cram1
(declare (salience 4900))
(id-root ?id cram)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rata_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cram.clp 	cram1   "  ?id "  rata_le )" crlf))
)

;"cram","VT","1.rata_lenA"
;He passed after just one month's cramming.
;
