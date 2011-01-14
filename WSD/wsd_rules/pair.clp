
(defrule pair0
(declare (salience 5000))
(id-root ?id pair)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pair.clp 	pair0   "  ?id "  jodZA )" crlf))
)

;"pair","N","1.jodZA"
(defrule pair1
(declare (salience 4900))
(id-root ?id pair)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pair.clp 	pair1   "  ?id "  jodZA_banA )" crlf))
)

;"pair","VTI","1.jodZA_banAnA"
;She will be paired with her senior in a doubles match.
;dabalsa mEca meM usakI jodZI jyeRTa KilAdZI ke sAWa banegI.
;
