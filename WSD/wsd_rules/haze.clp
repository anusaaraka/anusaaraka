
(defrule haze0
(declare (salience 5000))
(id-root ?id haze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulaJana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  haze.clp 	haze0   "  ?id "  ulaJana )" crlf))
)

;"haze","N","1.ulaJana"
;Her mind was in a haze regarding her marriage.
;usa ke mana meM apane vivAha ke viRaya meM ulaJana WI.
;
(defrule haze1
(declare (salience 4900))
(id-root ?id haze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  haze.clp 	haze1   "  ?id "  pareSAna_kara )" crlf))
)

;"haze","V","1.pareSAna_karanA"
;The old students haze the new ones in the college .
;kAleja meM naye vixyArWI ko purAne vixyArWI pareSAna karawe hEM
;
