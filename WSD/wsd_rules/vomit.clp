
(defrule vomit0
(declare (salience 5000))
(id-root ?id vomit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vamana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vomit.clp 	vomit0   "  ?id "  vamana )" crlf))
)

;"vomit","N","1.vamana"
;Take medicine to curb vomit
;
(defrule vomit1
(declare (salience 4900))
(id-root ?id vomit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kE_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vomit.clp 	vomit1   "  ?id "  kE_kara )" crlf))
)

;"vomit","VI","1.kE_kara"
;After drinking too much, the students vomitted
;
