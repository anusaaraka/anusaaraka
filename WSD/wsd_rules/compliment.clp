
(defrule compliment0
(declare (salience 5000))
(id-root ?id compliment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSaMsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compliment.clp 	compliment0   "  ?id "  praSaMsA )" crlf))
)

;"compliment","N","1.praSaMsA"
;I gave her a written compliment for her excellent dance performance.
;
(defrule compliment1
(declare (salience 4900))
(id-root ?id compliment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSaMsA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compliment.clp 	compliment1   "  ?id "  praSaMsA_kara )" crlf))
)

;"compliment","VT","1.praSaMsA_karanA"
;I complemented her for her excellent dance performance.
;
