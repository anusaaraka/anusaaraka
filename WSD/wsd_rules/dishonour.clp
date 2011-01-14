
(defrule dishonour0
(declare (salience 5000))
(id-root ?id dishonour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apamAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dishonour.clp 	dishonour0   "  ?id "  apamAna )" crlf))
)

;"dishonour","N","1.apamAna"
;His rowdism has brought dishonour to the family.
;
(defrule dishonour1
(declare (salience 4900))
(id-root ?id dishonour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apamAniwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dishonour.clp 	dishonour1   "  ?id "  apamAniwa_kara )" crlf))
)

;"dishonour","VT","1.apamAniwa_karanA"
;His rowdism dishonours the family's reputation.
;
