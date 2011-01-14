
(defrule rat0
(declare (salience 5000))
(id-root ?id rat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUhA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rat.clp 	rat0   "  ?id "  cUhA )" crlf))
)

(defrule rat1
(declare (salience 4900))
(id-root ?id rat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apane_sAWiyoz_ko_CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rat.clp 	rat1   "  ?id "  apane_sAWiyoz_ko_CodZa )" crlf))
)

;"rat","VI","1.apane_sAWiyoz_ko_CodZanA"
;His friends dislike him as he often rats on them.
;
;