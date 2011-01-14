
(defrule sift0
(declare (salience 5000))
(id-root ?id sift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sift.clp 	sift0   "  ?id "  Cana )" crlf))
)

;"sift","VI","1.CananA"
;Sift the dust from the grain.
;
(defrule sift1
(declare (salience 4900))
(id-root ?id sift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAnabIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sift.clp 	sift1   "  ?id "  CAnabIna )" crlf))
)

;"sift","VT","1.CAnabIna"
;Go && sift the evidences.
;
