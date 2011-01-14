
(defrule lull0
(declare (salience 5000))
(id-root ?id lull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sannAtA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lull.clp 	lull0   "  ?id "  sannAtA )" crlf))
)

;"lull","N","1.sannAtA"
;There was a lull in the storm
;
(defrule lull1
(declare (salience 4900))
(id-root ?id lull)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAMwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lull.clp 	lull1   "  ?id "  SAMwa_kara )" crlf))
)

(defrule lull2
(declare (salience 4800))
(id-root ?id lull)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAMwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lull.clp 	lull2   "  ?id "  SAMwa_ho )" crlf))
)

;"lull","VTI","1.SAMwa_karanA[honA]"
;The fighting lulled for a moment
;
