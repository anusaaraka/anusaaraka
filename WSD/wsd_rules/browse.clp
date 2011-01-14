
(defrule browse0
(declare (salience 5000))
(id-root ?id browse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iXara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  browse.clp 	browse0   "  ?id "  iXara )" crlf))
)

(defrule browse1
(declare (salience 4900))
(id-root ?id browse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pqRTa_palatAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  browse.clp 	browse1   "  ?id "  pqRTa_palatAnA )" crlf))
)

;"browse","N","1.pqRTa_palatAnA"
;I had a browse among the second-hand books.
;
;